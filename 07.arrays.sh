#!/bin/bash

FRUITS=("apple" "banana" "Manago")

echo "first value: ${FRUITS[0]}"

echo "second value: ${[FRUITS[1]]}"

echo "THRIRD value: ${[FRUITS[2]]}"

echo "All value: ${[FRUITS@1]]}