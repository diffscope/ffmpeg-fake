cmake_minimum_required(VERSION 3.17)

project(ffmpeg
    VERSION 5.0.0.1
    LANGUAGES C ASM
)

# libavcodec provides implementation of a wider range of codecs.
# libavformat implements streaming protocols, container formats and basic I/O access.
# libavutil includes hashers, decompressors and miscellaneous utility functions.
# libavfilter provides means to alter decoded audio and video through a directed graph of connected filters.
# libavdevice provides an abstraction to access capture and playback devices.
# libswresample implements audio mixing and resampling routines.
# libswscale implements color conversion and scaling routines.

# Hint: build ffmpeg independently and copy the contents of result directory here.
# The dir structure should be like:
#
#   CMakeLists.txt
# + usr
#   + bin
#       *.dll
#       ...
#   + include
#     + libavcodec
#     + libavformat
#       ...
#   + lib
#       *.lib
#       *.a
#       *.so
#       ...
#   + share
#     + ffmpeg
#       ...

if (WIN32)
    set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/windows-amd64)
elseif (APPLE)
    set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/mac-amd64)
else()
    set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/linux-amd64)
endif()

set(INSTALL_BIN_DIR ${CMAKE_INSTALL_BINDIR})
set(INSTALL_LIB_DIR ${CMAKE_INSTALL_LIBDIR})
set(INSTALL_INC_DIR ${CMAKE_INSTALL_INCLUDEDIR}/FFmpeg)
set(INSTALL_CMAKE_DIR ${CMAKE_INSTALL_LIBDIR}/cmake/FFmpeg)

install(DIRECTORY ${ffmpeg_dir}/bin/ DESTINATION ${INSTALL_BIN_DIR})
install(DIRECTORY ${ffmpeg_dir}/lib/ DESTINATION ${INSTALL_LIB_DIR})
install(DIRECTORY ${ffmpeg_dir}/include/ DESTINATION ${INSTALL_INC_DIR})
install(DIRECTORY ${ffmpeg_dir}/share/ DESTINATION ${CMAKE_INSTALL_PREFIX}/share)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/cmake/ DESTINATION ${INSTALL_CMAKE_DIR})