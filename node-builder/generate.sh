#!/usr/bin/env bash

for VERSION in 4 5 6 7; do
    rocker build --pull -var NodeVersion=${VERSION}
done
