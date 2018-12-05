#! /bin/bash

# FOR TESTING OR DEVELOPMENT UNCOMMENT NEXT LINE:
mkdir -p test/surf && cd test/surf

# Make date directories
function mkdatedirs() {
    # Setting todays date
    today=`date +%Y-%m-%d`
    # Setting yesterday on mac or linux
    [[ $uname -eq "Darwin" ]] && yesterday=`date -v -1d +%Y-%m-%d` || yesterday=`date --date="1 day ago" +%Y-%m-%d`

    mkdir -p $today $yesterday
}

# List of beaches
beaches=('Matosinhos' 'Leça' 'Espinho')

for key in "${beaches[@]}"; do
    echo $key
    mkdir -p $key && cd $key && mkdatedirs && cd ../
done


