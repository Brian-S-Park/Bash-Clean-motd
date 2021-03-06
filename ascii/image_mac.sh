#!/bin/bash

source ./centerer.src

VERSION=$(echo "$(sw_vers)" | awk '{print $2}' | head -2 | awk 'BEGIN{ORS=" "}2')

print_centered " _______  _______  ______    __   __  ___   __    _  _______  ___     "
print_centered "|       ||       ||    _ |  |  |_|  ||   | |  |  | ||   _   ||   |    "
print_centered "|_     _||    ___||   | ||  |       ||   | |   |_| ||  |_|  ||   |    "
print_centered "  |   |  |   |___ |   |_||_ |       ||   | |       ||       ||   |    "
print_centered "  |   |  |    ___||    __  ||       ||   | |  _    ||       ||   |___ "
print_centered "  |   |  |   |___ |   |  | || ||_|| ||   | | | |   ||   _   ||       |"
print_centered "  |___|  |_______||___|  |_||_|   |_||___| |_|  |__||__| |__||_______|"
print_centered "$VERSION"
print_centered "...."
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

