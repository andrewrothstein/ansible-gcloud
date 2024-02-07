#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads

# https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-360.0.0-linux-x86_64.tar.gz

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}
    local platform="${os}-${arch}"
    local file="google-cloud-sdk-${ver}-${platform}.${archive_type}"
    local url=$MIRROR/$file
    local lfile=$DIR/$file
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux arm
    dl $ver linux x86_64
    dl $ver linux x86
    dl $ver windows x86_64 zip
    dl $ver windows x86 zip
}

dl_ver ${1:-462.0.1}
