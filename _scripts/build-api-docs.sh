#!/bin/bash

if ! [ -x "$jazzy_bin" ]; then
    echo "\$jazzy_bin does not exist or is not executable"
    exit 1
fi

if ! [ -d "$siesta_dir" ]; then
    echo "\$siesta_dir does not exist or is not executable"
    exit 1
fi

docs_dir=$(dirname "$(dirname "$0")")

echo "Building docs in $docs_dir ..."

"$jazzy_bin" \
    --clean \
    --source-directory   "$siesta_dir" \
    --exclude            "$siesta_dir"/Source/Support/Siesta-ObjC.swift \
    --readme             _templates/api-readme.md \
    --output             api \
    \
    $jazzy_opts
