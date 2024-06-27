#!/bin/bash
sed -e '/\[unix\]/d' -e '/\[linux\]/d' -e '/\[osx\]/d' -e '/\[macos\]/d' environment.yml  > tmp.yml
mv tmp.yml environment.yml
