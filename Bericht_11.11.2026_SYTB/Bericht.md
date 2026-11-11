# Bericht am 11.11.2026

- Name: Jakob Kronberger
- Klasse: 3AHITS 
- Datum: 11.11.2026
- Thema: Arithmetic
- Fach: SYTB Übungen

## Aufgabe 1: 

Übung (Multiplizierer)
Erstelle ein Skript, das 2 Zahlen als Kommandozeilenargumente übernimmt. 
Multipliziere diese Zahlen und gib das Ergebnis aus, verwende jede der 3 besprochenen Methoden (let, expr, $(( ))).

Lösung: 

-> Skript anlegen 

Code im Skript
```sh
!#/bin/bash

let "ergebnis = $1 * $2"
echo "Ergebnis =  $ergebnis"
```

Erklärung: 
```sh
let "ergebnis = $1 * $2" -> sorgt dafür dass die `ergebnis Variable das `Produkt aus dem ersten Argument multipliziert dem zweiten Argument ist

echo "Ergebnis =  $ergebnis" -> Das ist die Ausgabe , das $ Zeichen vor ergebnis gibt den Inhalt der ergebnis Variable aus 
```


--- 

Eingabe in der Shell: 
```sh
chmod u+x Skript.sh

./Skript.sh 5 3 
```

Erklärung:
```sh
chmod u+x Skript.sh -> Gibt dem User Ausführrechte für das Skript

./Skript.sh 5 3 -> ./ führt das Skript aus und 5 und 3 sind Zahlen die wir für $1 und $2 einsetzen
```

Zweite Mögliche Ausgabe:



--- 

### -> Jetzt mit `expr`

-> Im Skript:
```sh
let "ergebnis2 = $(expr "$1" \* "$2")"
echo "Ergebnis2 = $ergebnis2"
```

Erklärung:
```sh
let "ergebnis2 = $(expr "$1" \* "$2")"

echo "Ergebnis2 = $ergebnis2"

## Aufgabe 2: 
