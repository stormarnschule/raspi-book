#!/bin/bash

# install cargo
if [ -f "$WERCKER_CACHE_DIR/cargo/mdbook" ]; then
    echo "mdbook found in cache"
else
    echo "downloading mdbook"
    cargo install mdbook
    mkdir -p "$WERCKER_CACHE_DIR/cargo"
    cp "/root/.cargo/bin/mdbook" "$WERCKER_CACHE_DIR/cargo/mdbook"
fi

echo "building the book"
"$WERCKER_CACHE_DIR/cargo/mdbook" build
