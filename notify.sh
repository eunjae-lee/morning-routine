#!/bin/bash
/Users/eunjae/.asdf/shims/one-thing "$1"
osascript -e "display notification \"$1\" with title \"Morning Routine\""

