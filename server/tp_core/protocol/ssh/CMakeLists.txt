cmake_minimum_required(VERSION 3.5)
project(tpssh)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${Project_SOURCE_DIR}/../out/server/x64/bin")


aux_source_directory(. DIR_SSH_SRCS)
aux_source_directory(../../common DIR_SSH_SRCS)
aux_source_directory(../../../../common/libex/src DIR_SSH_SRCS)

list(REMOVE_ITEM DIR_SSH_SRCS "./dllmain.cpp")
list(REMOVE_ITEM DIR_SSH_SRCS "./stdafx.cpp")

include_directories(
        ../../../../common/libex/include
        ../../../../external/linux/release/include
)

link_directories(../../../../external/linux/release/lib)

add_library(tpssh SHARED ${DIR_SSH_SRCS})
target_link_libraries(tpssh ssh ssh_threads ssl crypto mbedx509 mbedtls mbedcrypto dl pthread rt util)
