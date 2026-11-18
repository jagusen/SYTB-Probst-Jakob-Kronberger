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

-> Hier multiplizierst du einfach die beiden Argumente miteinander und speicherst das Ergebnis in der Variable `ergebnis`. Danach wird das Produkt ausgegeben

--- 

Eingabe in der Shell: 
```sh
chmod u+x Skript.sh

./Skript.sh 5 3 
```

-> Zuerst holst du dir Ausführrechte mit `chmod u+x`. Mit `./` wird das Skript ausgeführt


Zweite Mögliche Ausgabe:

--- 

### -> Jetzt mit `expr`

-> Im Skript:
```sh
let "ergebnis2 = $(expr "$1" \* "$2")"
echo "Ergebnis2 = $ergebnis2"
```
-> Hier brauchst du beim Multiplizieren noch ein `\` - Zeichen davor weil das `*` - Zeichen als Wildcard interpretiert wird und durch die Dateinamen im aktuellen Verzeichnis ersetzt wird

--- 

### -> Mit $(( ))

-> Im Skript:
```sh
let "ergebnis3 = $(($1 * $2))"
echo "Ergebnis3 = $ergebnis3"
```

## Aufgabe 2: 

Übung (Werkstatt Summe)
Schreibe ein Skript, das die Summe aller Beträge in klassenkassa.csv mit dem Text Werkstatt ermittelt.

Hinweise:

Mit paste -sd+ werden Zeilen zu einem Ausdruck der Form 15+13+42+23 zusammengefasst.
Verwende arithmetic expansion ($(( EXPR ))), um das Ergebnis auszurechnen.
Lösung 397

-> Im Skript
```sh
let "rechnen = $(grep "Werkstatt" klassenkassa.csv | cut -d ',' -f3 | paste -sd+)"
echo "Summe = $((rechnen))"
```

-> Zuerst filterst du alle Zeilen mit dem Wort `Werkstatt` heraus. Mit `cut` nimmst du dir die 3.Spalte heraus die du zum berechnen brauchst.`-d` gibt das Trennzeichen an.Mit `paste -sd+` werden die Zahlen zusammengefügt.
-> Danach wird das Ergebnis ausgegeben

## Aufgabe 3

Übung (Zeitmessung)
Schreibe 2 Skripts: time_start.sh und time_stop.sh. Bei Aufruf von time_stop.sh wird die Anzahl der Sekunden ausgegeben, die seit dem letzten Aufruf von time_start.sh vergangen sind.

Hinweise: Speichere die Zeit in time_start.sh in einer Datei.

1. 2 Skripte anlegen (time_start.sh , timestop.sh)

2. Eingabe in time_start.sh
```sh
Time1=$(date +%s)
echo "$Time1" > start_z.txt
```
-> Es wird zuerst die Zeit in sekunden umgerechnet und dann in der Variable `Time1` gespeichert. Danach wird eine Text-Datei erstellt in der der Wert der Variable `Time1` gespeichert wird

3. Eingabe in time_stop.sh
```sh
zeit_von_timestarts=$(cat start_z.txt)
Time2=$(date +%s);

 vergangene_zeit=$(expr "$Time2" - "$Time1")

echo "Vergangene Zeit: $vergangene_zeit"
```
-> Der Inhalt von der Textdatei `start_z.txt` wird in die Variable `zeit_von_timestarts` gespeichert. Dann wird andere Zeit `Time2` berechnet. Danach wird nur noch die Differenz berechnet und ausgegeben

4. Gib beiden Skripten Ausführrechte. Führe zuerst time_start.sh aus dann time_stop.sh. 
-> Eingabe im Terminal
```sh
./time_start.sh
./time_stop.sh
Vergangene Zeit: 12
```


## Aufgabe 4

Übung (Zufallszahl)
Challenge: $RANDOM erzeugt Zahlen zwischen 0 und 32767. Das ist nicht immer hilfreich. Schreibe ein Skript random.sh, bei dem über 2 Grenzen (Argumente) der gewünschte Wertebereich vorgegeben werden kann. Zum Beispiel generiert ./random.sh 10 45 eine zufällige Zahl im Bereich von 10 bis 45 (jeweils inklusive).

