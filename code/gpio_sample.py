# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement

from Adafruit_GPIO import GPIO
from Adafruit_GPIO import FT232H
from time import sleep

FT232H.use_FT232H()

ft232=FT232H.FT232H()

ft232.setup(12,GPIO.OUT)
ft232.setup(13,GPIO.OUT)
ft232.setup(14,GPIO.OUT)
ft232.setup(15,GPIO.OUT)

while True:
    ft232.output(12,GPIO.LOW)
    ft232.output(13,GPIO.LOW)
    ft232.output(14,GPIO.LOW)
    ft232.output(15,GPIO.LOW)
    sleep(3)
    ft232.output(12,GPIO.HIGH)
    ft232.output(13,GPIO.HIGH)
    ft232.output(14,GPIO.HIGH)
    ft232.output(15,GPIO.HIGH)
    sleep(3)
