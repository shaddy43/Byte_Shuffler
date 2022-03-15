#!bin/bash

#Author: Shayan Ahmed Khan
#Designation: Malware Analyst, reverse engineer and malware developer
#Tool_Name: Shuffler
#Company: Cytomate

#This script shuffle a specific set of bytes everytime. The signature text bytes that must be present are "abcdefghijklmnopqrstuvwxyz"
#Just initialize a string or char array with the signature text in the binary that you want to change

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
    r1=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r2=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r3=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r4=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r5=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r6=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r7=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r8=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r9=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r10=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r11=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r12=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r13=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r14=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r15=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r16=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r17=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r18=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r19=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r20=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r21=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r22=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r23=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r24=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r25=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))
    r26=$(printf '%x\n' $(($lower_limit + $RANDOM%(1+$upper_limit-$lower_limit) )))

    echo "Processing binary for static signature bypass......"

    #finding specific bytes in a binary and replacing those with random bytes that are printable ascii characters.
    xxd $global_input_file | awk '{print $2,$3,$4,$5,$6,$7,$8,$9}' | sed -z 's/\n/ /Ig'| sed 's/ //Ig' | sed "s/6162636465666768696A6B6C6D6E6F707172737475767778797A/$r1$r2$r3$r4$r5$r6$r7$r8$r9$r10$r11$r12$r13$r14$r15$r16$r17$r18$r19$r20$r21$r22$r23$r24$r25$r26/Ig" |
    sed "s/6100620063006400650066006700680069006A006B006C006D006E006F0070007100720073007400750076007700780079007A00/$r1'00'$r2'00'$r3'00'$r4'00'$r5'00'$r6'00'$r7'00'$r8'00'$r9'00'$r10'00'$r11'00'$r12'00'$r13'00'$r14'00'$r15'00'$r16'00'$r17'00'$r18'00'$r19'00'$r20'00'$r21'00'$r22'00'$r23'00'$r24'00'$r25'00'$r26'00'/Ig" > temp_file.txt

    #generating binary from changed hex
    xxd -r -p temp_file.txt $global_output_file
    rm -rf temp_file.txt
    echo "File conversion completed successfully..."
    echo "Output saved in... $global_output_file"
}

main_menu