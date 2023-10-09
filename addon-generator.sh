#!/bin/bash

get_input () {
    default=$1
    echo "$1(${!default}):"
    read -r read
    if [ "$read" != "" ]
    then
        export "$1"="$read"
    fi
}
image="corentinth/it-tools"  #todo delete
get_input "image"

name=$(echo "$image" | rev | cut -d / -f -1 | rev)
get_input "name"

slug=$(echo "$name" | awk '{print tolower($0)}')
get_input "slug"

cp -r .template "$slug"

cd "$slug" || return 1

mv c.yaml config.yaml
mv u.json updater.json

version=$(date +%Y.%W)
get_input "version"

files="config.yaml README.md updater.json"
variables="slug name version image"

for file in $files; do
    for variable in $variables; do
        script="s;_${variable}_;${!variable};g"
        sed -i "$script" "$file"
    done
done

arch_list="armhf,armv7,aarch64,amd64,i386"
echo "$arch_list"
echo "example input: '034' for armhf,amd64 and i386"
arches=3
get_input arches

for arch_number in $arches; do
    arch=$(echo $arch_list | cut -d , -f "$arch_number")
    echo "  $arch:$image" >> build.yaml
    echo "  - $arch" >> config.yaml
done




