#!/bin/bash
sed "/\[win\]/d" environment.yml | sed "/\[linux\]/d" > environment.yml
