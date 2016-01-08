# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from Adafruit_GPIO import FT232H
from Adafruit_GPIO import GPIO
from time import sleep


class SmartLineDS1307(object):
    def __init__(self, slave_addr=0x68):
        FT232H.use_FT232H()
        self.ft232h = FT232H.FT232H()
        self.init_gpio()
        self.i2c = FT232H.I2CDevice(self.ft232h, slave_addr)
        self.time_value = {'sec': 0, 'min': 0, 'hour': 0, '12hour': False, 'AM': False, 'date': 0, 'weekday': 1,
                           'month': 1, 'year': 2000}

    def init_gpio(self):
        # Enable I2C_CONNECT
        self.ft232h.setup(12, GPIO.OUT)
        self.ft232h.output(12, GPIO.HIGH)
        # Enable 3.3V output,not a must in fact
        self.ft232h.setup(13, GPIO.OUT)
        self.ft232h.output(13, GPIO.HIGH)
        # Enable I2C 3.3V pull up
        self.ft232h.setup(14, GPIO.OUT)
        self.ft232h.output(14, GPIO.LOW)
        # Enable 5V output
        self.ft232h.setup(15, GPIO.OUT)
        self.ft232h.output(15, GPIO.HIGH)

    @staticmethod
    def bcd_2_dec(bcd=83):
        high_4bits = (bcd >> 4) * 10
        low_4bits = bcd & 0x0F
        return high_4bits + low_4bits

    @staticmethod
    def dec_2_bcd(dec=53):
        high_4bits = (dec // 10) << 4
        low_4bits = dec % 10
        return high_4bits + low_4bits

    def get_hour(self):
        hour_value = self.i2c.readU8(0x02)
        if hour_value >= 64:
            self.time_value['12hour'] = True
            if (hour_value >> 0x5) & 0x1:
                # bit 5 high means PM
                self.time_value['AM'] = False
            else:
                self.time_value['AM'] = True
            hour_value = self.bcd_2_dec(hour_value & 0x1F)
        else:
            self.time_value['12hour'] = False
            hour_value = self.bcd_2_dec(hour_value)

        self.time_value['hour'] = hour_value

    def set_hour(self, hour12=False, AM=True, hour=18):
        hour_value = 0
        if hour12:
            assert 1 <= hour <= 12, 'value range for hour in 12hour mode is:1~12'
            hour_value |= 0x1 << 6
            if not AM:
                hour_value |= 0x1 << 5
        else:
            assert 0 <= hour <= 23, 'value range for hour in 12hour mode is:0~23'
        hour_value |= self.dec_2_bcd(hour)
        self.i2c.write8(0x02, hour_value)

    def read_time(self):
        self.time_value['sec'] = self.bcd_2_dec(self.i2c.readU8(0x00))
        self.time_value['min'] = self.bcd_2_dec(self.i2c.readU8(0x01))
        self.get_hour()
        self.time_value['weekday'] = self.bcd_2_dec(self.i2c.readU8(0x03))
        self.time_value['date'] = self.bcd_2_dec(self.i2c.readU8(0x04))
        self.time_value['month'] = self.bcd_2_dec(self.i2c.readU8(0x05))
        self.time_value['year'] = self.bcd_2_dec(self.i2c.readU8(0x06)) + 2000

        return self.time_value

    def set_time(self, sec=0, min=0, hour12=False, AM=False, hour=18, weekday=1, date=8, month=11, year=2016):
        assert 0 <= sec <= 59, 'value range for second is:0~59'
        assert 0 <= min <= 59, 'value range for minute is:0~59'
        assert 1 <= weekday <= 7, 'value range for weekday is:1~7'
        assert 1 <= date <= 31, 'value range for date is:1~31'
        assert 2000 <= year <= 2099, 'value range for year:2000~2099'

        self.i2c.write8(0x00, self.dec_2_bcd(sec))
        self.i2c.write8(0x01, self.dec_2_bcd(min))
        self.set_hour(hour12, AM, hour)
        self.i2c.write8(0x03, self.dec_2_bcd(weekday))
        self.i2c.write8(0x04, self.dec_2_bcd(date))
        self.i2c.write8(0x05, self.dec_2_bcd(month))
        self.i2c.write8(0x06, self.dec_2_bcd(year - 2000))

    def disable_clock(self):
        current_r0 = self.i2c.readU8(0x00)
        self.i2c.write8(0x00, current_r0 | (1 << 7))

    def enable_clock(self):
        current_r0 = self.i2c.readU8(0x00)
        self.i2c.write8(0x00, current_r0 & (0 << 7))


clock = SmartLineDS1307()

# clock.set_time(sec=30,min=42,hour=10,weekday=5,date=8,month=1,year=2016)
while True:
    sleep(1)
    print(clock.read_time())
