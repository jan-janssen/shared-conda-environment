#!/bin/bash
sed -e '/\[win\]/d' -e '/\[osx\]/d' -e '/\[macos\]/d' environment.yml  > tmp.yml
mv tmp.yml environment.yml
