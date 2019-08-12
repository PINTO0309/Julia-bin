#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1HhKU8_LipyYSPYE4X9XxXn8RZxGpkswu" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1HhKU8_LipyYSPYE4X9XxXn8RZxGpkswu" -o julia-1.3.0-alpha.tar.gz
tar -zxvf julia-1.3.0-alpha.tar.gz
rm julia-1.3.0-alpha.tar.gz
echo "Finish!!"

