#!/bin/bash

# install cargo
function install_mdbook
{
    if [ -f "$WERCKER_CACHE_DIR/cargo/mdbook" ]; then
        debug "mdbook found in cache"
    else
        debug "downloading mdbook"
        cargo install mdbook
        mkdir -p "$WERCKER_CACHE_DIR/cargo"
        cp "~/.cargo/bin/mdbook" "$WERCKER_CACHE_DIR/cargo/mdbook"
    fi
}

function build
{
    debug "building the book"
    "$WERCKER_CACHE_DIR/cargo/mdbook" build
}

install_mdbook
build
