#!/bin/bash

get_input () {
    default=${!1}
    echo "$1($default):"

    autoFill=""

    if [ "$2" == 1 ]
    then
        autoFill=$default
    fi

    read -r -e -i "$autoFill" read
    if [ "$read" != "" ]
    then
        export "$1"="$read"
    fi
}
image="corentinth/it-tools"
get_input "image"

slug=$(echo "$image" | rev | cut -d / -f -1 | rev | awk '{print tolower($0)}')
get_input "slug" 1

# shellcheck disable=SC2001
name=$( echo "$slug" | sed -e "s/\b\(.\)/\u\1/g")
get_input "name" 1

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

port=80
get_input "port"

files="config.json README.md updater.json"
variables="slug name version image short_description port"

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




