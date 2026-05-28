#!/bin/bash
# Bit-Pop Bioconda build script
# Extracts pre-built binary from GitHub Release and installs to conda prefix

set -ex

# conda-build renames source files with hash suffix
tar xzf bit-pop-x86_64-linux_*.tar.gz

# Install to conda bin directory
install -d $PREFIX/bin
install -m 755 bit-pop $PREFIX/bin/bit-pop
