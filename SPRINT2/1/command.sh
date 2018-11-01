first=3; last=6; cat dados.txt | tail -n $first | head -n $((last-first))
mkdir ~/temp; cp [bB]*.txt ~/temp

Resolução (João)
a)
cat dados.txt | tail +3 | head -4 > texto.txt
