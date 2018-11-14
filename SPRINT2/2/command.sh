tr -s " " < clientes.txt | grep [ˆa-z] > clientes1.txt

# https://unix.stackexchange.com/questions/24509/how-to-print-the-longest-line-in-a-file
# -E = expressao regular; -m1 = maxcount (pega a primeira linha das encontradas)
cut -d "#" -f2 clientes1.txt > temp; grep -Em1 "^.{$(wc -L <temp)}\$" temp | wc -c && rm temp