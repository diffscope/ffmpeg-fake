# Configurations

+ https://github.com/mcmtroffaes/ffmpeg-msvc-build/issues/5#issuecomment-817362553

## Options with build types

+ Debug
    ```sh
    --prefix=ffbuild/debug --enable-debug --disable-optimizations --disable-stripping --disable-asm --disable-x86asm
    ```

+ Release
    ```sh
    --prefix=ffbuild/release --disable-debug --enable-optimizations --enable-stripping --enable-asm
    ```

## Options with OS

+ Windows
    ```sh
    --enable-mediafoundation --toolchain=msvc --arch=x86_64
    ```
    + Release
        ```sh
        --enable-x86asm
        ```

+ MacOSX M1
    ```sh
    --arch=arm64
    ```

## Options only for audio

+ Common
    ```sh
    --disable-everything  --enable-demuxer=image2 --enable-demuxer=aac --enable-demuxer=ac3 --enable-demuxer=aiff --enable-demuxer=ape --enable-demuxer=asf --enable-demuxer=au --enable-demuxer=avi --enable-demuxer=flac --enable-demuxer=flv --enable-demuxer=matroska --enable-demuxer=mov --enable-demuxer=m4v --enable-demuxer=mp3 --enable-demuxer='mpc*' --enable-demuxer=ogg --enable-demuxer='pcm*' --enable-demuxer=rm --enable-demuxer=shorten --enable-demuxer=tak --enable-demuxer=tta --enable-demuxer=wav --enable-demuxer=wv --enable-demuxer=xwma --enable-demuxer=dsf --enable-demuxer=dts --enable-demuxer=truehd --enable-decoder='aac*' --enable-decoder=ac3 --enable-decoder=alac --enable-decoder=als --enable-decoder=ape --enable-decoder='atrac*' --enable-decoder=eac3 --enable-decoder=flac --enable-decoder='gsm*' --enable-decoder='mp1*' --enable-decoder='mp2*' --enable-decoder='mp3*' --enable-decoder='mpc*' --enable-decoder=opus --enable-decoder='ra*' --enable-decoder=ralf --enable-decoder=shorten --enable-decoder=tak --enable-decoder=tta --enable-decoder=vorbis --enable-decoder=wavpack --enable-decoder='wma*' --enable-decoder='pcm*' --enable-decoder='dsd*' --enable-decoder=truehd --enable-decoder=mjpeg --enable-parser='aac*' --enable-parser=ac3 --enable-parser=cook --enable-parser=dca --enable-parser=flac --enable-parser=gsm --enable-parser=mpegaudio --enable-parser=tak --enable-parser=vorbis --enable-rpath --enable-pic --enable-shared  --disable-doc --enable-runtime-cpudetect
    ```



