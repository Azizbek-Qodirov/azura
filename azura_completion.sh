#!/bin/bash

_azura_completions() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="run --help"

    # If the previous word is "azura", suggest subcommands
    if [[ ${COMP_CWORD} == 1 ]]; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    # If the previous word is "run", suggest .az files and directories
    if [[ ${prev} == "run" ]]; then
        local files_and_dirs
        # List directories and add a trailing slash
        for dir in $(compgen -d -- "${cur}"); do
            files_and_dirs+="${dir}/ "
        done
        # List .az files
        files_and_dirs+="$(compgen -f -X '!*.az' -- "${cur}")"
        
        COMPREPLY=( $(compgen -W "${files_and_dirs}" -- ${cur}) )

        return 0
    fi
    
}