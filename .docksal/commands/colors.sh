#!/usr/bin/env bash

if [[ "${TERM}" != "dumb" ]]; then
  # Console colors
  red=$'\033[0;91m'
  red_bg=$'\033[101m'
  yellow_bg=$'\033[43m'
  lightmagenta_bg=$'\033[0;105m'
  green=$'\033[0;32m'
  green_bg=$'\033[42m'
  yellow=$'\033[0;33m'
  yellow_bold=$'\033[1;33m'
  blue=$'\033[0;34m'
  lime=$'\033[0;92m'
  acqua=$'\033[0;96m'
  magenta=$'\033[0;35m'
  lightmagenta=$'\033[0;95m'
  NC=$'\033[0m'
fi
