#!/bin/bash
sed '/\[win\]/d' environment.yml | sed '/\[osx\]/d' | sed '/\[macos\]/d' > tmp.yml
mv tmp.yml environment.yml
