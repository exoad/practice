if [ "$1" == "go" ] ;
then 
    g++ -fsanitize=undefined -march=x86-64 "$2.cxx" -o temp.out
    echo -e "\e[31;41;1m============[==入力==]=============\e[0m"
    ./temp.out
elif [ "$1" == "new" ] ;
then
    cp modules/temp.cxx "$2.cxx"
    code "$2.cxx"
elif [ "$1" == "googer" ] ;
then 
    cp modules/googer.cxx "$2.cxx"
    code "$2.cxx"
    echo -e "\e[37;42;1m[✓]( ͡°👅 ͡°)[==出力==]\e[0m"
elif [ "$1" == "ok" ] ;
then
    g++ -v -Wall -Wextra -O2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -fsanitize=undefined -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -march=x86-64 "$2.cxx" -o ______FLOW____.out
    if [ $? -eq 0 ] ;
    then
        echo  -e "\e[37;42;1m\n\n[✓✓✓✓✓✓✓✓✓✓✓✓✓✓✓]\n正解\n[✓✓✓✓✓✓✓✓✓✓✓✓✓✓✓]\n\e[0m"
    else
        echo -e "\e[31;41;1m\n\n[!!!!!!!!!!!!]\nコンパイルエラー\n[!!!!!!!!!!!!]\n\e[0m"
    fi
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