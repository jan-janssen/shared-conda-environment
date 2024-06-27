#!/bin/bash
sed '/\[win\]/d' environment.yml | sed '/\[linux\]/d' > tmp.yml
mv tmp.yml environment.yml
