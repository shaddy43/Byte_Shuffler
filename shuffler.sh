#!bin/bash

#Author: Shayan Ahmed Khan
#Designation: Malware Analyst, reverse engineer and malware developer
#Tool_Name: Shuffler
#Company: Cytomate

if [ $# -lt 2 ]; then
    echo ""
    echo "WELCOME TO BYTE SHUFFLER SCRIPT...!"
    printf "\n"
    printf "\nPlease enter the parameters..."
    printf "\nEg: Bash shuffler.sh <input_file_path.exe> <output_file_path.exe>\n\n"
    exit 1

else
    echo ""
    echo "WELCOME TO BYTE SHUFFLER SCRIPT...!"
    printf "\n"
    global_input_file=$1
    global_output_file=$2
fi

main_menu()
{
    #choosing a random number between 33 and 126, printable ascii characters
    lower_limit=33
    upper_limit=126
    replace1=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace2=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace3=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace4=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace5=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace6=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace7=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace8=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace9=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace10=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace11=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace12=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace13=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace14=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace15=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace16=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace17=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace18=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace19=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace20=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace21=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace22=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace23=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace24=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace25=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    replace26=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))

    echo "Processing binary for static signature bypass......"

    #finding specific bytes in a binary and replacing those with random bytes that are printable ascii characters.
    xxd $global_input_file | awk '{print $2,$3,$4,$5,$6,$7,$8,$9}' | sed "s/6162 6364 6566 6768 696A 6B6C 6D6E 6F70/$replace1$replace2 $replace3$replace4 $replace5$replace6 $replace7$replace8 $replace9$replace10 $replace11$replace12 $replace13$replace14 $replace15$replace16/Ig" | 
    sed "s/7172 7374 7576 7778 797A/$replace17$replace18 $replace19$replace20 $replace21$replace22 $replace23$replace24 $replace25$replace26/Ig" > temp_file.txt

    #generating binary from changed hex
    xxd -r -p temp_file.txt $global_output_file
    rm -rf temp_file.txt
    echo "File conversion completed successfully..."
    echo "Output saved in... $global_output_file"
}

main_menu