find_package(Qt6 REQUIRED COMPONENTS Gui)
find_package(absl CONFIG REQUIRED)

# Version
add_executable(version version.cpp)
target_compile_definitions(version PRIVATE
    PROJECT_NAME="${PROJECT_NAME}"
    VERSION="${VERSION}"
    GIT_REVISION="${GIT_REVISION}"
    DISTRIBUTOR="${DISTRIBUTOR}"
)
install(TARGETS version DESTINATION ${INSTALL_LIBDIR})

file(GLOB_RECURSE MATERIAL_COLOR_UTILITIES_SOURCES CONFIGURE_DEPENDS
    "${CMAKE_SOURCE_DIR}/reference/material-color-utilities/cpp/*.cc"
)
list(FILTER MATERIAL_COLOR_UTILITIES_SOURCES EXCLUDE REGEX "_test\\.cc$")

add_executable(material-extractor
    material-extractor.cpp
    ${MATERIAL_COLOR_UTILITIES_SOURCES}
)
target_include_directories(material-extractor PRIVATE
    "${CMAKE_SOURCE_DIR}/reference/material-color-utilities"
)
target_link_libraries(material-extractor PRIVATE Qt::Gui absl::flat_hash_map absl::strings)
# The upstream header uses std::optional without including its declaration.
target_compile_options(material-extractor PRIVATE -include optional)
install(TARGETS material-extractor DESTINATION ${INSTALL_LIBDIR})
