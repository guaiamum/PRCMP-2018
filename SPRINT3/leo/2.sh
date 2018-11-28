#!/bin/bash

# FALTA?? : 
# validar se diretório surf vazio?
# validar se diretório de cada praia vazio?


# [1º CICLO FOR] percorre todas os diretórios com nomes de praias encontrados no diretório /surf
for praia in $(find ~/prcmpPL/sprint3/surf -type d -not -name surf -maxdepth 1)
do

#	echo "$praia"
	nomePraia=$(basename $praia)
#	echo "$nomePraia"

	# Verifica se um ficheiro no formato: <nomeDaPraia>_<parâmetro>.csv, não existe.
	# Em caso afirmativo, cria um ficheiro no formato acima definido, com o nome da praia
	# correspondente a cada ciclo do 1º ciclo FOR, junto com o parametro passado como argumento. 
	# Caso contrário, apaga o conteudo do ficheiro já existente.
	#	if [ ! -f  ~/prcmpPL/sprint3/surf/$nomePraia\_$1.txt ]
	#       then
	#		echo -n "" > ~/prcmpPL/sprint3/surf/$nomePraia\_$1.txt
	#	else
	#		echo -n "" > ~/prcmpPL/sprint3/surf/$nomePraia\_$1.txt
	#	fi

	# OU

	# Cria um ficheiro vazio no formato: <nomeDaPraia>_<parâmetro>.csv. Se este ficheiro já existir,
	# todo o seu conteúdo é eliminado..
	echo -n "" > ~/prcmpPL/sprint3/surf/$nomePraia\_$1.txt
	
	# [2º CICLO FOR] percorre todos os ficheiros no formato 2018-??-??.txt, encontrados
	# em cada um dos diretórios correspondentes a praias 'passadas', individualmente, em cada ciclo
	# do 1º ciclo FOR, até no máximo 2 níveis de subdiretórios.  
	for fich in $(find $praia -type f -name 2018-??-??.txt -maxdepth 2)
	do
		# Variáveis:
		# 'data' armazena apenas o nome do ficheiro (sem a extensão .txt)
		# 'valor' armazena o valor do parâmetro passado como argumento do script
		data=$(basename $fich | cut -f1 -d".")
		valor="$(grep "^$1" $fich | cut -f2 -d":")"

		#		echo "$data;$valor"
		
		# Adiciona ao ficheiro criado, os dados recolhidos em cada um dos ficheiros 'passados' 
		# em cada ciclo do 2º ciclo FOR, para o respetivo parâmetro, no formato <data>;<valorDoParametro>.
		echo "$data;$valor" >> ~/prcmpPL/sprint3/surf/$nomePraia\_$1.txt
		
	done
done

exit
