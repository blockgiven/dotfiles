#!/bin/sh
if [ -z $(locale -a | grep ja_JP.utf8) ]; then
  locale-gen ja_JP.utf8
fi
