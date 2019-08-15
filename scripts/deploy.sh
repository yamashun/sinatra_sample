#!/bin/bash
echo '[' `date "+%Y/%m/%d:%H:%M:%S"` ']' Start
sleep 10
touch "$(pwd)/test.txt"
echo '[' `date "+%Y/%m/%d:%H:%M:%S"` ']' END


