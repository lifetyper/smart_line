# encoding:utf-8
from __future__ import absolute_import, division, with_statement, print_function
import xlsxwriter
import os
import sys
from time import sleep

try:
    netlist = sys.argv[1]
except IndexError:
    for item in os.listdir(os.curdir):
        if item.endswith('.net'):
            netlist = os.path.join(os.curdir, item)
            print(netlist)
bom_file = 'BOM.xls'

component_dict = dict()
try:
    with open(netlist, 'rU') as fp:
        for line in fp:
            line = line.strip()
            if line.startswith('(comp '):
                ref = ''.join(list(line.split(' ')[-1])[:-1])
                component_dict[ref] = dict()
                component_dict[ref]['reference'] = ref
            if line.startswith('(value '):
                value = ''.join(list(line.split(' ')[-1])[:-1])
                component_dict[ref]['value'] = value
            if line.startswith('(footprint '):
                footprint = ''.join(list(line.split(' ')[-1])[:-1]).split(':')[-1]
                component_dict[ref]['footprint'] = footprint
except NameError:
    print('Net List Not Found！Exiting...')
    sleep(1)
    quit()

bom_dict = dict()
for ref, params in component_dict.iteritems():
    bom_dict.setdefault(params['value'], {})
    bom_dict[params['value']].setdefault('reference', []).append(params['reference'])
    bom_dict[params['value']].setdefault('footprint', set()).add(params['footprint'])

workbook = xlsxwriter.Workbook(bom_file)
sheet = workbook.add_worksheet('BOM')

for index, tab in enumerate(['Value', 'Reference', 'Count', 'Footprint']):
    sheet.write(0, index, tab)

row = 1
for value, params in bom_dict.iteritems():
    sheet.write(row, 0, value)
    sheet.write(row, 1, ','.join(params['reference']))
    sheet.write(row, 2, len(params['reference']))
    sheet.write(row, 3, ','.join(params['footprint']))
    row += 1

workbook.close()
