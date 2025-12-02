#!/usr/bin/env bash

differences_new=$(comm -23 <(grep -rhoP "^##+ \K[a-zA-Z_]*" "$2/docs/$1.log" | sort) <(grep -rhoP "^##+ \K[a-zA-Z_]*" "$3/docs/$1.log" | sort) | sort)
differences_removed=$(comm -13 <(grep -rhoP "^##+ \K[a-zA-Z_]*" "$2/docs/$1.log" | sort) <(grep -rhoP "^##+ \K[a-zA-Z_]*" "$3/docs/$1.log" | sort) | sort)

echo "New:"
echo "$differences_new"
echo ""
echo "Removed:"
echo "$differences_removed"