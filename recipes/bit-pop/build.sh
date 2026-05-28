#!/bin/bash
# Bit-Pop Bioconda build script
set -ex

# List files for debugging
ls -la

# Extract the binary - conda-build renames with hash, use ls to find it
TAR_FILE=$(ls *.tar.gz 2>/dev/null | head -1)
tar xzf "$TAR_FILE"

# Install to conda bin directory
install -d $PREFIX/bin
install -m 755 bit-pop $PREFIX/bin/bit-pop
