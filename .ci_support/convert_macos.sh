#!/bin/bash
sed -e '/\[win\]/d' -e '/\[linux\]/d' -e '/\[macarm\]/d' environment.yml > tmp.yml
mv tmp.yml environment.yml
