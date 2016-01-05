# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from lcm1602_smart_line import SmartLineLcm1602
from at24c04_smart_line import SmartLineEEPROM

lcd = SmartLineLcm1602()


rom = SmartLineEEPROM(slave_addr=0x50)

rom.write_page(0x00, 'From I2C EEPROM!', 16)


lcd.print_line()
lcd.print_line(1,''.join([chr(i) for i in rom.read_page(0x00,16)]))