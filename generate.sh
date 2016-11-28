#!/usr/bin/env bash

# Resolve list to build, either from arguments or from available sub directories
images=( "$@" )
if [ ${#images[@]} -eq 0 ]; then
	images=( */ )
fi
images=( "${images[@]%/}" )

# Actually build each file
OLD_PATH=$PWD
for image in "${images[@]}"; do
    echo "Buidling ${image}:"

    if ! [ -x "${image}/generate.sh" ]; then
        echo "generate script missing."
        exit 1
    fi

    cd ${image}
    echo ""
    ./generate.sh
    echo ""
    cd ${OLD_PATH}
done
