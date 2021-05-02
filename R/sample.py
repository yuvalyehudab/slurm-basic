#!/usr/bin/python

import time, socket


def main():
    for i in range(0, 10):
        host = socket.gethostname()
        str = '''hello from {name} at time {count}'''
        print(str.format(name=host, count=i))
        time.sleep(5)

if __name__ == '__main__':
    main()
