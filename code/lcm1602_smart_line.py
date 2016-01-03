# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from Adafruit_GPIO import FT232H
from Adafruit_GPIO import GPIO
from time import sleep

LCD_CLEARDISPLAY = 0x01
LCD_RETURNHOME = 0x02
LCD_ENTRYMODESET = 0x04
LCD_DISPLAYCONTROL = 0x08
LCD_CURSORSHIFT = 0x10
LCD_FUNCTIONSET = 0x20
LCD_SETCGRAMADDR = 0x40
LCD_SETDDRAMADDR = 0x80
LCD_BACKLIGHT = 0x08
LCD_NOBACKLIGHT = 0x00

# FLAGS PARA EL MODO DE ENTRADA
LCD_ENTRYRIGHT = 0x00
LCD_ENTRYLEFT = 0x02
LCD_ENTRYSHIFTINCREMENT = 0x01
LCD_ENTRYSHIFTDECREMENT = 0x00

# FLAGS DE DISPLAY CONTROL
LCD_DISPLAYON = 0x04
LCD_DISPLAYOFF = 0x00
LCD_CURSORON = 0x02
LCD_CURSOROFF = 0x00
LCD_BLINKON = 0x01
LCD_BLINKOFF = 0x00

# FLAGS DE FUNCTION SET
LCD_8BITMODE = 0x10
LCD_4BITMODE = 0x00
LCD_2LINE = 0x08
LCD_1LINE = 0x00
LCD_5x10DOTS = 0x04
LCD_5x8DOTS = 0x00

LCD_EN = 0x04  # Enable bit
LCD_RW = 0x02  # Read/Write bit
LCD_RS = 0x01  # Register select bit


class SmartLineLcm1602(object):
    def __init__(self, slave_addr=0x27):
        FT232H.use_FT232H()
        self.ft232h = FT232H.FT232H()
        self.init_gpio()
        self.i2c = FT232H.I2CDevice(self.ft232h, slave_addr)
        self.lcd_init()

    @staticmethod
    def sleep_us(time=1):
        sleep(0.000001 * time)

    @staticmethod
    def sleep_ms(time=1):
        sleep(0.001 * time)

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
        # Enable 5V output for LCM1602 LCD
        self.ft232h.setup(15, GPIO.OUT)
        self.ft232h.output(15, GPIO.HIGH)

    def expander_write(self, value):
        self.i2c.writeRaw8(value | LCD_BACKLIGHT)

    def pulse_enable(self, value):
        self.expander_write(value | LCD_EN)
        self.sleep_ms(1)
        self.expander_write(value & ~LCD_EN)
        self.sleep_ms(1)

    def write4bits(self, value):
        self.expander_write(value)
        self.pulse_enable(value)

    def send(self, value, mode):
        high = value & 0xF0
        low = (value << 4) & 0xF0
        self.write4bits(high | mode)
        self.write4bits(low | mode)

    def command(self, value):
        self.send(value, 0)

    def clear(self):
        self.command(LCD_CLEARDISPLAY)
        self.sleep_ms(2)

    def home(self):
        self.command(LCD_RETURNHOME)
        self.sleep_ms(2)

    def locate(self, row, col):
        row_offsets = [0x00, 0x40, 0x14, 0x54]
        self.command(LCD_SETDDRAMADDR | ((col % 16) + row_offsets[row % 2]))

    def print_char(self, value):
        value = ord(value)
        self.send(value, LCD_RS)

    def print_line(self, line=0, str_value='Hello SmartLine!'):
        if line == 0:
            self.locate(0, 0)
        elif line == 1:
            self.locate(1, 0)
        else:
            print('Error Line Number For LCD Display!')
            return
        if len(str_value) > 16:
            print('String too long,will be trunked!')
            str_value = list(str_value)[:16]
            str_value = ''.join(str_value)
        for char in str_value:
            self.print_char(char)

    def lcd_init(self):
        self.sleep_ms(50)
        self.expander_write(LCD_BACKLIGHT)
        self.sleep_ms(1000)

        self.write4bits(0x03 << 4)
        self.sleep_ms(5)
        self.write4bits(0x30)
        self.sleep_ms(5)
        self.write4bits(0x30)
        self.sleep_ms(1)

        self.write4bits(0x20)
        self.command(LCD_FUNCTIONSET | LCD_2LINE)
        self.command(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF)
        self.clear()

        self.command(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT)
        self.home()



