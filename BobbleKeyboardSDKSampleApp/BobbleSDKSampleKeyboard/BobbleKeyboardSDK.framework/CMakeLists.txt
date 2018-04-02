set(CMAKE_CXX_STANDARD 11)

file(GLOB_RECURSE SUGGEST            "suggest/*.cpp"            "suggest/*.h")
file(GLOB_RECURSE UTILS              "utils/*.cpp"              "utils/*.h")

include_directories(libDict)
add_library(libDict STATIC ${UTILS} ${SUGGEST} defines.h)