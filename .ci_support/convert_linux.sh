#!/bin/bash
sed '/\[win\]/d' environment.yml | sed '/\[osx\]/d' | sed '/\[macos\]/d' > environment.yml
