#!/bin/bash

#https://tex.stackexchange.com/a/298385
pandoc --filter=pandoc-citeproc --csl=ieee.csl -s mybib.md -o mybib.html
