#!/usr/bin/env bash

differences_new=$(comm -23 <(grep -rhoP "^[a-zA-Z_]*:" "$1/docs/modifiers.log" | sort) <(grep -rhoP "^[a-zA-Z_]*:" "$2/docs/modifiers.log" | sort) | sort)
differences_removed=$(comm -13 <(grep -rhoP "^[a-zA-Z_]*:" "$1/docs/modifiers.log" | sort) <(grep -rhoP "^[a-zA-Z_]*:" "$2/docs/modifiers.log" | sort) | sort)

echo "New:"
echo "$differences_new"
echo ""
echo "Removed:"
echo "$differences_removed"