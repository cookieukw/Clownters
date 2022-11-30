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
 # Author: CookieUkw                                  |
 #--------------------------------------------------------
 # Date       : 30/11/2022                                 |
 #--------------------------------------------------------
 # Lincese    : MIT lincese                              |
 #--------------------------------------------------------
 # Use: bash start.sh                                       |
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
