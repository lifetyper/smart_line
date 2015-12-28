# encoding:utf-8
from __future__ import absolute_import, division, print_function, with_statement
import serial
import struct
from time import sleep

com=serial.Serial('COM4',115200,timeout=0.1,parity=serial.PARITY_EVEN)

com.write(struct.pack('B',0x55))
data=com.read(1).encode('hex')
if data=='aa':
    print('Got AA')

# with open('boot.hex', 'rb') as src:
#     data_list=[]
#     while True:
#         data = src.read(2)
#         if data == '':
#             break
#         int_value = int(data, 16)
#         data_send=struct.pack('B',int_value)
#         data_list.append(struct.pack('B',int_value))
# print(data_list)
# com.write(data_list)

with open('boot.hex', 'rb') as src:
    data_list=[]
    while True:
        data = src.read(2)
        if data == '':
            break
        int_value = int(data, 16)
        data_send=struct.pack('B',int_value)
        com.write(data_send)
