#!/bin/bash
#
let "ergebnis = $1 * $2"
echo "Ergebnis =  $ergebnis"


let "ergebnis2 = $(expr "$1" \* "$2")"
echo "Ergebnis2 = $ergebnis2"

let "ergebnis3 = $(($1 * $2))"
echo "Ergebnis3 = $ergebnis3"

let "rechnen = $(grep "Werkstatt" klassenkassa.csv | cut -d ',' -f3 | paste -sd+)"
echo "Summe = $((rechnen))"
