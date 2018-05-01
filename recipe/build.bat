mkdir CMakeBuild
cd CMakeBuild
cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ..
cmake --build .
