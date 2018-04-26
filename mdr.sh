#!/bin/bash
pandoc "$1" --smart --self-contained \
        --css=github.css --highlight-style=haddock \
        --output="$2"
