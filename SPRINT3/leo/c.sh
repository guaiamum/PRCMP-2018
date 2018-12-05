#!/bin/bash

baseClientes=TopClientes.txt
referenciasBancos="$1"

if [ $# -eq 0 ]; then 
	printf "Não foi introduzido nenhum parametro no script!\nCertifique-se de que passa o doc. com as referencias dos bancos como argumento.\n"
elif [ ! -f $1 ]; then
	echo "O documento passado como parametro não existe!"
else
	while read line; do

		nib=$(echo $line | cut -f4 -d";")
		size=$(echo -n $nib | wc -c | tr -d " ")
		nomeCliente=$(echo $line | cut -f1 -d";")
		
		if [ "$size" -ne 21 ]
		then
			printf "Atenção: [NIB INVÁLIDO] - $nib\nCliente: $nomeCliente\n\n"
		else
			ref=$(echo $nib | cut -c1-4)
			foundRef=$(grep "^$ref" $referenciasBancos)

			if [ -n "$foundRef" ]; then
				nomeBanco=$(echo $foundRef | cut -f2 -d":")
				printf "Nib: $nib\nRef: $ref   Banco: $nomeBanco\n\n"
			else
			 	printf "Atenção: [REF. DESCONHECIDA] - A referência $ref não consta da lista de bancos.\nCliente : $nomeCliente\n\n"
			fi
		fi

	done < $baseClientes
fi
	
exit

