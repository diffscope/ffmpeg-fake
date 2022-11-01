# Configurations

## Windows

+ Debug
```sh
./configure --prefix=ffbuild/debug --enable-pic --enable-shared --disable-optimizations --enable-debug --disable-x86asm --extra-cflags=-g --disable-stripping --disable-doc --enable-runtime-cpudetect--disable-ptx-compression --enable-mediafoundation --disable-vulkan --disable-postproc --toolchain=msvc --arch=x86_64
````

+ Release
```sh
./configure --prefix=ffbuild/release --enable-pic --enable-shared --enable-asm --enable-x86asm --disable-debug --enable-stripping --disable-doc --enable-runtime-cpudetect --disable-ptx-compression --enable-mediafoundation --disable-vulkan --disable-postproc --toolchain=msvc --arch=x86_64
````

#  --enable-libmfx 

<!-- + Debug
````
--toolchain=msvc --enable-pic --disable-doc --enable-debug --enable-runtime-cpudetect --enable-asm --enable-x86asm --target-os=win32 --enable-ffmpeg --disable-ffplay --enable-ffprobe --disable-alsa --enable-avcodec --enable-avdevice --enable-avformat --enable-avfilter --disable-postproc --enable-swresample --enable-swscale --disable-libaom --disable-libass --disable-avisynth --disable-bzlib --disable-libdav1d --disable-libfdk-aac --disable-libfontconfig --disable-libfreetype --disable-libfribidi --disable-iconv --disable-libilbc --disable-lzma --disable-libmp3lame --disable-libmodplug --disable-cuda --disable-nvenc --disable-nvdec  --disable-cuvid --disable-ffnvcodec --disable-opencl --disable-opengl --disable-libopenh264 --disable-libopenjpeg --disable-openssl --disable-libopus --disable-sdl2 --disable-libsnappy --disable-libsoxr 
--disable-libspeex --disable-libssh --disable-libtensorflow --disable-libtesseract --disable-libtheora --disable-libvorbis --disable-libvpx --disable-libwebp --disable-libx264 --disable-libx265 --disable-libxml2 --disable-zlib --disable-libsrt  --enable-cross-compile --arch=x86_64 --disable-static --enable-shared --extra-cflags=-DHAVE_UNISTD_H=0
````

+ Release
````






-->

