#!/usr/bin/sh

# .clangd does not support relative pathing as far as we're concerned
# so we made this thing for a quick setup

function generate_clangd {
    echo "CompileFlags:
    Add: [
        \"-I$(pwd)/src\",
        \"-Wall\",
        \"-Wshadow\",
        \"-Wextra\",
        \"-std=c++20\"
    ]
" > .clangd
}

generate_clangd

