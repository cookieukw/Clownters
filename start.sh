#!/usr/bin/env bash

<<CLOWNTERS
 #CLOWNTERS
 #--------------------------------------------------------
 # Name script: Panel Clownters                         |
 #--------------------------------------------------------
 # Script     : A1 PANEL                                |
 #--------------------------------------------------------
 # Description: dashboard for consultation and hack tools|
 #--------------------------------------------------------
 # Version    : 0.3                                      |
 #--------------------------------------------------------
 # Authors    : Patinn, Eduardo e Mike                   |
 #--------------------------------------------------------
 # Date       : 08/08/21                                 |
 #--------------------------------------------------------
 # Lincese    : MIT lincese                              |
 #--------------------------------------------------------
 # Use: bash A1.sh                                       |
 #--------------------------------------------------------
 #CLOWNTERS
CLOWNTERS


command -v clang 
ret="$?"
clear 
printf "\e[1;32m loading...\n"
[[ "${ret}" == "0" ]]|| pkg install clang -y &> /dev/null
test -f Sploit && rm Sploit

test -f main.c && gcc main.c -o main
    chmod 777 main
    ./main
exit 0
