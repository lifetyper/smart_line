import Adafruit_GPIO.FT232H as FT232H
from Adafruit_GPIO import GPIO

FT232H.use_FT232H()

ft232h = FT232H.FT232H()

ft232h.setup(12,GPIO.OUT)
ft232h.setup(14,GPIO.OUT)

ft232h.output(12,GPIO.LOW)
ft232h.output(14,GPIO.HIGH)


i2c = FT232H.I2CDevice(ft232h, 0x1A)
print 'init i2c'

i2c.writeRaw8(0x55)
response=hex(i2c.readRaw8())
if response=='0xaa':
    print('got aa')

with open('boot.hex', 'rb') as src:
    while True:
        data = src.read(2)
        if data == '':
            break
        hex_value = int(data, 16)
        i2c.writeRaw8(hex_value)
print 'write done'
