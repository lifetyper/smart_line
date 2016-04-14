# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from Adafruit_GPIO import FT232H
from Adafruit_GPIO import GPIO


FT232H.use_FT232H()
ft232 = FT232H.FT232H()
ft232.setup(12,GPIO.OUT)
ft232.output(12,GPIO.LOW)

spi = FT232H.SPI(ft232, cs=3, mode=0, max_speed_hz=1000000)
spi.write([0x55])
print(spi.read(1))


with open('boot.hex', 'rb') as src:
    while True:
        data = src.read(2)
        if data == '':
            break
        hex_value = int(data, 16)
        i_list = [hex_value]
        spi.write(i_list)

print('write done')
