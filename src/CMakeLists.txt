cmake_minimum_required(VERSION 3.17)

project(ffmpeg-fake
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
    if(CMAKE_OSX_ARCHITECTURES STREQUAL "arm64")
        set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/mac-arm64)
    else()
        set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/mac-amd64)
else()
    set(ffmpeg_dir ${CMAKE_CURRENT_SOURCE_DIR}/linux-amd64)
endif()

cmake_path(IS_RELATIVE CMAKE_INSTALL_BINDIR _bin_rel)
cmake_path(IS_RELATIVE CMAKE_INSTALL_LIBDIR _lib_rel)
cmake_path(IS_RELATIVE CMAKE_INSTALL_INCLUDEDIR _inc_rel)

if (${_bin_rel})
    set(INSTALL_BINDIR ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR})
else()
    set(INSTALL_BINDIR ${CMAKE_INSTALL_BINDIR})
endif()
if (${_lib_rel})
    set(INSTALL_LIBDIR ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR})
else()
    set(INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR})
endif()
if (${_inc_rel})
    set(INSTALL_INCDIR ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR})
else()
    set(INSTALL_INCDIR ${CMAKE_INSTALL_INCLUDEDIR})
endif()

set(INSTALL_INCDIR ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME})
set(INSTALL_CMAKE_DIR ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME})

configure_file(FFmpegTargets.cmake.in ${CMAKE_CURRENT_BINARY_DIR}/FFmpegTargets.cmake @ONLY)

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    install(DIRECTORY ${ffmpeg_dir}/debug/bin/ DESTINATION ${INSTALL_BINDIR})
    install(DIRECTORY ${ffmpeg_dir}/debug/lib/ DESTINATION ${INSTALL_LIBDIR})
else()
    install(DIRECTORY ${ffmpeg_dir}/bin/ DESTINATION ${INSTALL_BINDIR})
    install(DIRECTORY ${ffmpeg_dir}/lib/ DESTINATION ${INSTALL_LIBDIR})
endif()

install(DIRECTORY ${ffmpeg_dir}/include/ DESTINATION ${INSTALL_INCDIR})
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/cmake/ DESTINATION ${INSTALL_CMAKE_DIR})
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/FFmpegTargets.cmake DESTINATION ${INSTALL_CMAKE_DIR})