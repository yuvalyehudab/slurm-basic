#!/bin/python3

#check_torch.py
#author: yuvalyehudab

import sys

if ('-q' not in sys.argv):
    def print_output(str):
        print(str + ': ' + 'check_torch.py')
else:
    def print_output(str):
        pass

print_output('starting')

import torch

print_output('imported torch')

available = torch.cuda.is_available()

print_output(str(available))

print_output('finished')

