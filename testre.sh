#!/bin/bash
function ergodic(){


echo [ >> booklist.json
index = 0

        for file in ` ls $1 `
        do
                if [ -d $1"/"$file ]
                then
                        ergodic $1"/"$file
                else
                    OLD_IFS=”$IFS”
                    IFS='.'
                    arr=($file)
                    IFS="$OLD_IFS"

var1=${arr[1]}
var2="plist"
if [ "$var1" == "$var2" ]
then


if [ $index > 0 ]
then
    echo ","
    echo , >> booklist.json

fi
    let index=${index}+1

echo "${arr[0]}"
echo "{ \"title\" : \""${arr[0]}\"} >> booklist.json
fi


                fi
        done
echo ] >> booklist.json
}
INIT_PATH="/workCode/bookLibrary/books"
ergodic $INIT_PATH
