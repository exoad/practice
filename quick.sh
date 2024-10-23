if [ "$1" == "go" ] ;
then 
    g++ -Wall -Wextra -O2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -fsanitize=undefined -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -march=x86-64 "$2.cxx" -o temp.out
    echo -e "\e[31;41;1m============[ENTRY-POINT]=============\e[0m"
    ./temp.out
elif [ "$1" == "new" ] ;
then
    cp modules/temp.cxx "$2.cxx"
    code "$2.cxx"
elif [ "$1" == "googer" ] ;
then 
    cp modules/googer.cxx "$2.cxx"
    code "$2.cxx"
elif [ "$1" == "dart" ] ;
then
    cp modules/main.dart "$2.dart"
    code "$2.dart"
elif [ "$1" == "rdart" ] ;
then   
    dart "$2.dart"
elif [ "$1" == "jj" ] ;
then
    cp modules/Main.java "Main_$2.java"
    code "Main_$2.java"
elif [ "$1" == "rj" ] ;
then 
    java "Main_$2.java"
fi
echo "Done"