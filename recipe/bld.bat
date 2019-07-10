:: Don't think we need vcpkg since conda is available.
:: But, maybe need to add it to the path somehow?

:: # Install
:: if %platform%==Win32 set VCPKG_TRIPLET=x86-windows
:: if %platform%==x64 set VCPKG_TRIPLET=x64-windows
:: vcpkg install libogg:%VCPKG_TRIPLET% libvorbis:%VCPKG_TRIPLET% libflac:%VCPKG_TRIPLET% sqlite3:%VCPKG_TRIPLET% opus:%VCPKG_TRIPLET%

:: # Before Build
mkdir CMakeBuild
cd CMakeBuild
if %platform%==Win32 set CMAKE_GENERATOR=Visual Studio 15 2017
if %platform%==x64 set CMAKE_GENERATOR=Visual Studio 15 2017 Win64

cmake .. -G"%CMAKE_GENERATOR%" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release
