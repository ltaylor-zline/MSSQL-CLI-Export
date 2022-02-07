#!/bin/sh
emacs --batch --file $1 --eval "(org-html-export-to-html)"
