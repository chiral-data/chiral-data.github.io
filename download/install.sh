#!/bin/sh
# Install Chiral Command-Line-Interface

CHIRAL_RELEASE_ROOT="https://github.com/chiral-data/chiral-db/releases/download/v0.1.1"

main() {
    get_openssl || return 1
    local _openssl_ver="$RETVAL"

    get_os || return 1
    local _os_type="$RETVAL"

    say "Downloading Chiral Command-Line-Interface for ${_os_type} with OpenSSL version ${_openssl_ver} ..."
    local _url="${CHIRAL_RELEASE_ROOT}/chiral-${_os_type}-openssl-${_openssl_ver}"
    local _err=$(curl --silent --show-error --location "$_url" --output chiral 2>&1)
    local _status=$?
    if [ -n "$_err" ]; then 
        say "curl download err: ${_err}" 
        return _status
    fi

    $(chmod +x chiral)
    say "Chiral Command-Line-Interface installed!"
    say "Type './chiral' to start ..."
}

say() {
    printf '%s\n' "$1"
}

err() {
    say "$1" >&2
    exit 1
}

get_openssl() {
    if openssl version | grep -qi '1\..\..' ; then
        RETVAL=1
    elif openssl version | grep -qi '3\..\..' ; then
        RETVAL=3
    else
        err "Unknown OpenSSL version"
    fi
}

get_os() {
    local _ostype
    _ostype="$(uname -s)"

    if [ "$_ostype" = Linux ]; then
        RETVAL="linux"
    elif [ "$_ostype" = Darwin ]; then
        RETVAL="macos"
    else
        err "Unsupported OS $_ostype"
    fi
}

main "$@" || exit 1