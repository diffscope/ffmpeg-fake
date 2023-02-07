#!/bin/bash

ARCH=arm64

# Configure for debug
echo "./configure $(cat scripts/audio.sh.in) $(cat scripts/debug.sh.in) $(cat scripts/mac.sh.in) --arch=$ARCH"

echo "#"

# Configure for release
echo "./configure $(cat scripts/audio.sh.in) $(cat scripts/release.sh.in) $(cat scripts/mac.sh.in) --arch=$ARCH"