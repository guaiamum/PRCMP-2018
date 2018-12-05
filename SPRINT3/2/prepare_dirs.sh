#! /bin/bash

# base data
basetemps='TEMP:22
ONDL:2.5
V:15
D:N'

# FOR TESTING OR DEVELOPMENT UNCOMMENT NEXT LINE:
mkdir -p test/surf && cd test/surf

# Make date directories
function mkdatedirs() {
    # Setting todays month and date
    month=`date +%b`
    today=`date +%Y-%m-%d`
    # Setting yesterday on mac or linux
    [[ $uname -eq "Darwin" ]] && yesterday=`date -v -1d +%Y-%m-%d` || yesterday=`date --date="1 day ago" +%Y-%m-%d`

    mkdir $month; cd $month && echo $basetemps > $today.txt;echo $basetemps > $yesterday.txt
    cd ..
}

# List of beaches
beaches=('Matosinhos' 'Leça' 'Espinho')

for key in "${beaches[@]}"; do
    mkdir -p $key && cd $key && mkdatedirs; cd ../ && echo "Created folder and files for: " $key
done


