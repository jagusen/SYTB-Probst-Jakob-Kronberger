datei=$1



groesse=$(stat --printf="%s" "$datei")

test "$groesse" -gt 100  && echo "Datei ist zu groß" || echo "Größe OK"


