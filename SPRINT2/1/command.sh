first=3; last=6; cat dados.txt | tail -n $first | head -n $((last-first))
mkdir ~/temp; cp [bB]*.txt ~/temp

a)
tail +3 dados.txt | head -4 >> texto.txt

b)
