y=0
for entry in Mid/*
do
   cat "$entry" | tr [A-Z] [a-z] | tr -cs "a-z_" " " | tr " " "\n" | sort | uniq -c | sort -nr > out/$y.txt
   ./shellscript.sh stopwords.txt out/$y.txt | grep [[:alpha:]] > out2/$y.txt
   y=$((y+1))
done
