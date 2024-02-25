#! /bin/bash

for style in $(pandoc --list-highlight-styles); do
  echo "$style starting.."
	pandoc --highlight-style=$style --template=simple.template index.md -o $style.css
  echo "$style done.."
done

