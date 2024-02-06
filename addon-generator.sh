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

mv c.json config.json
mv u.json updater.json

version=$(date +%Y.%W)
get_input "version"

keep_rootfs=0
get_input "keep_rootfs"

if [ $keep_rootfs -eq 0 ]; then
    rm -r rootfs
fi

short_description=""
get_input "short_description"

files="config.json README.md updater.json"
variables="slug name version image short_description"

for file in $files; do
    for variable in $variables; do
        script="s;_${variable}_;${!variable};g"
        sed -i "$script" "$file"
    done
done

arch_list="armhf,armv7,aarch64,amd64,i386"
echo "$arch_list"
echo "example input: '145' for armhf,amd64 and i386"
arches=4
get_input "arches"

for (( i=0; i<${#arches}; i++ )); do
    arch_number="${arches:$i:1}"
    arch=$(echo $arch_list | cut -d , -f "$arch_number")
    echo "  $arch: $image" >> build.yaml
    conf_line='      "'"$arch"'"'
    if [ "$arch_number" -ne "${arches:0-1}" ]; then
        conf_line="$conf_line,"
    fi
    echo "$conf_line" >> config.json
done
echo "   ]" >> config.json
echo "}" >> config.json




