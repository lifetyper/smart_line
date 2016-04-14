# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from Adafruit_GPIO import FT232H
from Adafruit_GPIO import GPIO

from time import sleep


class MyI2C(FT232H.I2CDevice):
    def readList(self, register, length):
        """Read a length number of bytes from the specified register.  Results
        will be returned as a bytearray."""
        if length <= 0:
            raise ValueError("Length must be at least 1 byte.")
        self._idle()
        self._transaction_start()
        self._i2c_start()
        self._i2c_write_bytes([self._address_byte(False), register])
        self._i2c_stop()
        self._i2c_idle()
        self._i2c_start()
        self._i2c_write_bytes([self._address_byte(True)])
        self._i2c_read_bytes(length)
        self._i2c_stop()
        response = self._transaction_end()
        self._verify_acks(response[:-length])
        return response[-length:]


class SmartLineEEPROM(object):
    def __init__(self, slave_addr=0x50):
        FT232H.use_FT232H()
        self.ft232h = FT232H.FT232H()
        self.init_gpio()
        self.i2c = MyI2C(self.ft232h, slave_addr)

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

    def wait_busy(self):
        while not self.i2c.ping():
            pass

    def write_byte(self, addr, value):
        try:
            self.i2c.write8(addr, value)
        except TypeError:
            self.i2c.write8(addr, ord(value))
        self.wait_busy()

    def read_byte(self, addr):
        value = self.i2c.readU8(addr)
        return value

    def write_page(self, addr, values, count):
        if count > 16:
            print('Page Too Long,chunked')
            count = 16
        data_list = list(values)[:count]
        self.i2c.writeList(addr, data_list)
        self.wait_busy()

    def read_page(self, addr, count):
        return self.i2c.readList(addr, count)



