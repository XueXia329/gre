#!/bin/bash

#script to recursively travel the content director and create _index.md files

function traverse() {   
    for file in $(ls "$1")
    do
        if [[ ! -d ${1}/${file} ]]; then
            echo " ${1}/${file} is a file"
        else
            echo "entering recursion with: ${1}${file}"
            touch "${1}/${file}/_index.md"
            traverse "${1}/${file}"
        fi
    done
}

function main() {
    traverse "$1"
}

main "$1"