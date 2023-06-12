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

+ macOS
  
    ```sh
    --install-name-dir='@rpath'
    ```
    
    + Apple Silicon (arm64)
    
      ```sh
      --arch=arm64
      ```
    
    * Intel (x86_64) Debug
    
      ```sh
      --arch=x86_64
      ```
    
    * Intel (x86_64) Release
    
      ```sh
      --enable-x86asm --arch=x86_64
      ```

## Options only for audio

+ Common
    ```sh
    --disable-decoders --enable-decoder='aac*,adpcm*,alac,als,anull,ape,atrac*,eac3,flac,gsm*,mp1*,mp2*,mp3*,mpc*,opus,ra*,ralf,shorten,tak,tta,vorbis,wavpack,wma*,pcm*,dsd*,truehd,mjpeg' --disable-encoders --enable-encoder='aac*,adpcm*,alac,anull,eac3,flac,mp3*,opus,ra*,tta,vorbis,wavpack,wma*,pcm*,truehd,libmp3lame' --enable-libmp3lame --enable-rpath --enable-pic --enable-shared --disable-doc --enable-runtime-cpudetect
    ```



