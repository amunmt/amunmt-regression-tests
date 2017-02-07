#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + '/../../../amunmt/build/src')
import libamunmt as nmt


def test_init():
    nmt.init('-c config.yml')


def test_translate():
    output = nmt.translate(['Alice has a cat .'])[0]
    assert output.strip() == 'Alice hat eine Katze .'


def main():
    test_init()
    test_translate()


if __name__ == "__main__":
    main()
