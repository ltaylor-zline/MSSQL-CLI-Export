#!/bin/sh
echo "*** New Query" `date` "from \"$1\":" >> bin/sql-cmd-output.org
echo "#+BEGIN_SRC sql" >> bin/sql-cmd-output.org
cat $1 | cat `echo` >> bin/sql-cmd-output.org
echo "#+END_SRC\n\n**** RESULTS:\n#+ATTR_HTML: :border 2 :rules all :frame border" >> bin/sql-cmd-output.org
./mssql-local.sh -i $1 -o bin/last-result.org --mssqlclirc assets/mssqlclirc
cat bin/last-result.org >> bin/sql-cmd-output.org
echo >> bin/sql-cmd-output.org
./emacs-export.sh bin/sql-cmd-output.org

echo "Refresh" >> ws-server/reset.fifo
