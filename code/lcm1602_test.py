# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from lcm1602_smart_line import SmartLineLcm1602

lcd = SmartLineLcm1602()

lcd.print_line()
lcd.print_line(1,'Python Powered!')