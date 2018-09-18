#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os

AMUN_LIB_DIR = '../../../amun/build' if len(sys.argv) < 2 else sys.argv[1]
sys.path.append(os.path.realpath(AMUN_LIB_DIR))

import libamunmt as nmt


def main():
    nmt.init('-c config.yml')
    output = nmt.translate(['Alice has a cat .'])
    assert len(output) == 1
    translation = output[0]
    assert translation.strip() == 'Alice hat eine Katze .'


if __name__ == "__main__":
    main()
