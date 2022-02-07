#!/bin/sh
echo "*** New Query" `date` "from \"$1\":" >> bin/sql-cmd-output.org
echo "#+BEGIN_SRC sql" >> bin/sql-cmd-output.org
cat $1 >> bin/sql-cmd-output.org
echo "#+END_SRC\n\n**** RESULTS:\n#+ATTR_HTML: :border 2 :rules all :frame border" >> bin/sql-cmd-output.org
./mssql-local.sh -i $1 -o temp.org --mssqlclirc assets/mssqlclirc
cat temp.org >> bin/sql-cmd-output.org
echo >> bin/sql-cmd-output.org
./emacs-export.sh bin/sql-cmd-output.org

