#!/bin/sh
DEST=$1

echo "What is your name? "
read AUTHOR
echo "email: "
read EMAIL
echo "project version: "
read VERSION

PLATE1="# -*- coding: utf-8 -*-

__author__ = '$AUTHOR'
__email__ = '$EMAIL'
__version__ = '$VERSION'
"
PLATE2="#!/usr/bin/env python
# -*- coding: utf-8 -*-
"

mkdir -p "$DEST"
echo $PLATE1 > $DEST/__init__.py
echo $PLATE2 > $DEST/main.py
