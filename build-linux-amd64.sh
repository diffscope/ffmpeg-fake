#!/bin/bash

ARCH=x86_64

# Configure for debug
echo "./configure $(cat scripts/audio.sh.in) $(cat scripts/debug.sh.in) $(cat scripts/linux.sh.in) --arch=$ARCH"

echo "#"

# Configure for release
echo "./configure $(cat scripts/audio.sh.in) $(cat scripts/release.sh.in) $(cat scripts/linux.sh.in) --enable-x86asm --arch=$ARCH"