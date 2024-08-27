#!/bin/bash
sed -e '/\[win\]/d' -e '/\[linux\]/d' -e '/\[macos\]/d' -e '/\[unix64\]/d' environment.yml > tmp.yml
mv tmp.yml environment.yml
