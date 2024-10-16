if [ "$1" == "go" ] ;
then 
    g++ "$2.cxx" -o temp.out
    echo -e "\e[31;41;1m============[ENTRY-POINT]=============\e[0m"
    ./temp.out
elif [ "$1" == "new" ] ;
then
    cp modules/temp.cxx "$2.cxx"
    code "$2.cxx"
fi
echo "Done"