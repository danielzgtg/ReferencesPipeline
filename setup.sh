#!/bin/bash
set -e
git clone --recurse-submodules git@github.com:zotero/translation-server.git
cp -T default.json translation-server/config/default.json
wget https://www.zotero.org/styles/ieee -O ieee.csl
