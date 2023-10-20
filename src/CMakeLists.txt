cmake_minimum_required(VERSION 3.5)

project(libowa LANGUAGES C)

add_library(oswrapper_audio SHARED 
    oswrapper_audio.c
)

if(WIN32)
    target_link_libraries(oswrapper_audio PRIVATE mfplat.lib mfreadwrite.lib shlwapi.lib )
elseif(APPLE)
    target_link_libraries(oswrapper_audio PRIVATE -Framework AudioToolbox)
else()
    message("This library won't work in this platform!")
endif()
