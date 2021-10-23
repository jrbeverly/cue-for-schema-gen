#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p "${SCRIPT_DIR}/tmp"
curl -sSL https://github.com/cue-lang/cue/releases/download/v0.4.0/cue_v0.4.0_linux_amd64.tar.gz -o "${SCRIPT_DIR}/tmp/cue.tar.gz"
(
    cd "${SCRIPT_DIR}/tmp"
    tar -xvf cue.tar.gz
    sudo mv cue /usr/local/bin/cue
    sudo mv hof /usr/local/bin/hof
)

cue version
hof version
rm -rf "${SCRIPT_DIR}/tmp"