zeit_von_timestarts=$(cat start_z.txt)
Time2=$(date +%s);

 vergangene_zeit=$(expr "$Time2" - "$Time1")

echo "Vergangene Zeit: $vergangene_zeit"

