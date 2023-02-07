# Configurations

## Windows

+ Debug
```sh
./configure --prefix=ffbuild/debug --enable-pic --enable-shared --disable-optimizations --enable-debug --disable-x86asm --extra-cflags=-g --disable-stripping --disable-doc --enable-runtime-cpudetect --disable-ptx-compression --disable-vulkan --disable-postproc --arch=x86_64 --enable-mediafoundation --toolchain=msvc
````

+ Release
```sh
./configure --prefix=ffbuild/release --enable-pic --enable-shared --enable-asm --enable-x86asm --disable-debug --enable-stripping --disable-doc --enable-runtime-cpudetect --disable-ptx-compression --disable-vulkan --disable-postproc --arch=x86_64 --enable-mediafoundation --toolchain=msvc
````

## Mac

+ Debug
```sh
./configure --prefix=ffbuild/debug --enable-pic --enable-shared --disable-optimizations --enable-debug --disable-x86asm --extra-cflags=-g --disable-stripping --disable-doc --enable-runtime-cpudetect --disable-ptx-compression --disable-vulkan --disable-postproc --arch=x86_64
````

+ Relsase
```sh
./configure --prefix=ffbuild/release --enable-pic --enable-shared --enable-asm --enable-x86asm --disable-debug --enable-stripping --disable-doc --enable-runtime-cpudetect --disable-ptx-compression --disable-vulkan --disable-postproc --arch=x86_64
````

#  --enable-libmfx 

<!-- + Debug
````
--toolchain=msvc --enable-pic --disable-doc --enable-debug --enable-runtime-cpudetect --enable-asm --enable-x86asm --target-os=win32 --enable-ffmpeg --disable-ffplay --enable-ffprobe --disable-alsa --enable-avcodec --enable-avdevice --enable-avformat --enable-avfilter --disable-postproc --enable-swresample --enable-swscale --disable-libaom --disable-libass --disable-avisynth --disable-bzlib --disable-libdav1d --disable-libfdk-aac --disable-libfontconfig --disable-libfreetype --disable-libfribidi --disable-iconv --disable-libilbc --disable-lzma --disable-libmp3lame --disable-libmodplug --disable-cuda --disable-nvenc --disable-nvdec  --disable-cuvid --disable-ffnvcodec --disable-opencl --disable-opengl --disable-libopenh264 --disable-libopenjpeg --disable-openssl --disable-libopus --disable-sdl2 --disable-libsnappy --disable-libsoxr 
--disable-libspeex --disable-libssh --disable-libtensorflow --disable-libtesseract --disable-libtheora --disable-libvorbis --disable-libvpx --disable-libwebp --disable-libx264 --disable-libx265 --disable-libxml2 --disable-zlib --disable-libsrt  --enable-cross-compile --arch=x86_64 --disable-static --enable-shared --extra-cflags=-DHAVE_UNISTD_H=0
````

+ Release
````

# FFmpeg with only Audio Decoders

Edited configuration options from [here](https://github.com/mcmtroffaes/ffmpeg-msvc-build/issues/5#issuecomment-817362553).

```sh
./configure --prefix=ffbuild/release --disable-everything  --enable-demuxer=image2 --enable-demuxer=aac --enable-demuxer=ac3 --enable-demuxer=aiff --enable-demuxer=ape --enable-demuxer=asf --enable-demuxer=au --enable-demuxer=avi --enable-demuxer=flac --enable-demuxer=flv --enable-demuxer=matroska --enable-demuxer=mov --enable-demuxer=m4v --enable-demuxer=mp3 --enable-demuxer='mpc*' --enable-demuxer=ogg --enable-demuxer='pcm*' --enable-demuxer=rm --enable-demuxer=shorten --enable-demuxer=tak --enable-demuxer=tta --enable-demuxer=wav --enable-demuxer=wv --enable-demuxer=xwma --enable-demuxer=dsf --enable-demuxer=dts --enable-demuxer=truehd --enable-decoder='aac*' --enable-decoder=ac3 --enable-decoder=alac --enable-decoder=als --enable-decoder=ape --enable-decoder='atrac*' --enable-decoder=eac3 --enable-decoder=flac --enable-decoder='gsm*' --enable-decoder='mp1*' --enable-decoder='mp2*' --enable-decoder='mp3*' --enable-decoder='mpc*' --enable-decoder=opus --enable-decoder='ra*' --enable-decoder=ralf --enable-decoder=shorten --enable-decoder=tak --enable-decoder=tta --enable-decoder=vorbis --enable-decoder=wavpack --enable-decoder='wma*' --enable-decoder='pcm*' --enable-decoder='dsd*' --enable-decoder=truehd --enable-decoder=mjpeg --enable-parser='aac*' --enable-parser=ac3 --enable-parser=cook --enable-parser=dca --enable-parser=flac --enable-parser=gsm --enable-parser=mpegaudio --enable-parser=tak --enable-parser=vorbis --enable-rpath --enable-pic --enable-shared --enable-asm --disable-debug --enable-stripping --disable-doc --enable-runtime-cpudetect --arch=arm64
```





-->

