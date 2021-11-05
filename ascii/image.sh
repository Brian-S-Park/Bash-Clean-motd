#!/bin/bash

#Centering Function
function print_centered {
     [[ $# == 0 ]] && return 1

     declare -i TERM_COLS="$(tput cols)"
     declare -i str_len="${#1}"
     [[ $str_len -ge $TERM_COLS ]] && {
          echo "$1";
          return 0;
     }

     declare -i filler_len="$(( (TERM_COLS - str_len) / 2 ))"
     [[ $# -ge 2 ]] && ch="${2:0:1}" || ch=" "
     filler=""
     for (( i = 0; i < filler_len; i++ )); do
          filler="${filler}${ch}"
     done

     printf "%s%s%s" "$filler" "$1" "$filler"
     [[ $(( (TERM_COLS - str_len) % 2 )) -ne 0 ]] && printf "%s" "${ch}"
     printf "\n"

     return 0
}

print_centered "     __  ____                __           ___   ____   ____  __ __"
print_centered "    / / / / /_  __  ______  / /___  __   |__ \ / __ \ / __ \/ // /"
print_centered "   / / / / __ \/ / / / __ \/ __/ / / /   __/ // / / // / / / // /_"
print_centered "  / /_/ / /_/ / /_/ / / / / /_/ /_/ /   / __// /_/ // /_/ /__  __/"
print_centered "\____/_.___/\__,_/_/ /_/\__/\__,_/   /____/\____(_)____/  /_/"
print_centered ""
print_centered ""
print_centered ".;codddoc;. "
print_centered ".,coddddddddddddc,. "
print_centered "'ldddddddddddddddddddl' "
print_centered "'odddddddddddddddc. .:dddo' "
print_centered "cdddddddddo:,'''.l.   .dddddc "
print_centered "ldddddddo,l'       ;,.,lddddddl "
print_centered "cddddddd,   l;;:c:;.    ,dddddddl "
print_centered "'ddddddd'   ,odddddddd,   .ddddddd' "
print_centered "cdddl:ll   cdddddddddddc   :ddddddl "
print_centered "ddd'   .: .ddddddddddddd,..;ddddddd "
print_centered "ddd,   .; .ddddddddddddd,..;ddddddd "
print_centered "cdddlcll   :dddddddddddc   :ddddddl "
print_centered "'ddddddd'   ,odddddddo,   'ddddddd' "
print_centered "cddddddd;   l;,:::,.    ,dddddddc "
print_centered "ldddddddo,l'      .;'.'lddddddl "
print_centered ":dddddddddo:;,,,;l.   .dddddc "
print_centered ".ldddddddddddddddc. .cdddo. "
print_centered ".cdddddddddddddddddddl' "
print_centered ".'codddddddddddoc'. "
print_centered ".;codddoc;. "
print_centered "		"

