#!/bin/sh
# Resets the sql command output

echo "#+html_doctype: html5\n#+title: SQL Command Output Viewer\n#+options: H:1\n#+options: toc:nil\n#+options: html-style:nil\n" > bin/sql-cmd-output.org
echo '#+HTML_HEAD: <link rel="stylesheet" type="text/css" href="stylesheet.css" />' >> bin/sql-cmd-output.org
echo '#+HTML_HEAD: <script src="listen-ws.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>' >> bin/sql-cmd-output.org
./emacs-export.sh bin/sql-cmd-output.org