#!/bin/bash

nreads=$((gzip -dc $1 2> /dev/null || cat $1) | wc -l)
expr $nreads / 4

