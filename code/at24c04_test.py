# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
from at24c04_smart_line import SmartLineEEPROM

rom = SmartLineEEPROM(slave_addr=0x50)
rom.write_page(0x00, 'hello smart line!herere', 16)

print(rom.read_page(0x00, 16))