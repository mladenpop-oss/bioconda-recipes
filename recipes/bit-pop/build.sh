#!/bin/bash
# Bit-Pop Bioconda build script
# conda-build already extracts the tar.gz, so bit-pop binary is in work dir
set -ex

# Install to conda bin directory
install -d $PREFIX/bin
install -m 755 bit-pop $PREFIX/bin/bit-pop
