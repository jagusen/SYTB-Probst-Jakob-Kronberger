# Bericht vom 21.10.2026

- Name: Jakob Kronberger
- Datum: 21.10.2026
- Klasse: 3AHITS 
- Fach: SYTB Übungen

## Übung 1: 

Angabe: Übung (Tage bis zum Ball)
Schreibe ein Shell-Skript das die Anzahl der Tage bis zum HTL Ball ermittelt. Das Datum des Balls soll am Anfang des Skripts in einer Variable stehen. Die Ausgabe soll in der folgenden Form sein:

Es sind noch 94 Tage bis zum HTL Ball (2027-01-15)
Hinweise:

Rechne mit dem date Format seconds since the Epoch (1970-01-01 00:00 UTC), siehe date +%s.
Mit date --date=... kann ein beliebiges Datum statt dem aktuellen verwendet werden, z.B. date --date=2027-01-15 +%s.

Eingabe: 
```sh
$ Datum=2027-01-15
$ Heutiger_Tag=$(date +%s)
$ HTL_Ball=$(date --date="$Datum" +%s)
$ echo "Noch $Erg Tage bis zum HTL Ball ($Datum)"
```

Ausgabe: 
```sh
Noch 85 Tage bis zum HTL Ball (2027-01-15)
```

-> Zuerst deklarierst du das Datum des HTL-Balls
-> durch `date +%s` wird das gesamte Datum in Sekunden umgewandelt.
-> bei `$(date --date="$Datum" +%s)` wird das Datum welches in der Variable "Datum" gespeichert ist in Sekunden umgewandelt.

## Übung 2 

`Übung "Zufälliger Satz" geht nicht`

## Übung 3

Angabe: Übung (Datierte Kopie V1)
Schreibe ein Skript, das einen Dateinamen als erstes Argument übernimmt und eine datierte Kopie der Datei anlegt. Heißt die Datei z.B. file1.txt und ist heute der 2026-10-13, so soll die Kopie 2026-10-13_file1.txt heißen.

Hinweis: Verwende command substitution und das Kommando date.



