#!/usr/bin/env bash

# Adapted from ivanalejandro0 and Daniel Harding's script:
# https://stackoverflow.com/a/20026992

function virtualenv_info(){
    # Get Virtual Environment
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi

    # Print Environment name
    if [ "$1" != "" ]; then
        [[ -n "$venv" ]] && printf "$1" $venv
    else
        [[ -n "$venv" ]] && echo "$venv"
    fi
    
}
