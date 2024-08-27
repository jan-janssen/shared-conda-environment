#!/bin/bash
sed -e '/\[win\]/d' -e '/\[linux\]/d' -e '/\[macos\]/d' environment.yml > tmp.yml
mv tmp.yml environment.yml
