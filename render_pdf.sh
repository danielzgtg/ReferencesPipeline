#!/bin/bash

#https://tex.stackexchange.com/a/464904
pandoc --filter=pandoc-citeproc --csl=ieee.csl -V pagestyle=empty -s mybib.md --pdf-engine=xelatex -o mybib.pdf
