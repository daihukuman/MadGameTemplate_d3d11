# Install script for directory: C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/pkgs/directxtk_x64-windows/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/lib/DirectXTK.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/bin/DirectXTK.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/directxtk/DirectXTK-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/directxtk/DirectXTK-targets.cmake"
         "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/CMakeFiles/Export/a11a99d19d8d3c8432b0fa94ef825414/DirectXTK-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/directxtk/DirectXTK-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/directxtk/DirectXTK-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/directxtk" TYPE FILE FILES "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/CMakeFiles/Export/a11a99d19d8d3c8432b0fa94ef825414/DirectXTK-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/directxtk" TYPE FILE FILES "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/CMakeFiles/Export/a11a99d19d8d3c8432b0fa94ef825414/DirectXTK-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/directxtk" TYPE FILE FILES
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/BufferHelpers.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/CommonStates.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/DDSTextureLoader.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/DirectXHelpers.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/Effects.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/GeometricPrimitive.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/GraphicsMemory.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/Model.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/PostProcess.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/PrimitiveBatch.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/ScreenGrab.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/SpriteBatch.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/SpriteFont.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/VertexTypes.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/WICTextureLoader.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/SimpleMath.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/SimpleMath.inl"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/GamePad.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/Keyboard.h"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/src/may2026-a68e548ea6.clean/Inc/Mouse.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/directxtk" TYPE FILE FILES
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/directxtk-config.cmake"
    "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/directxtk-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/DirectXTK.pc")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/daihu/Projects/MadGameTemplate_DirectXTK/vcpkg_installed/vcpkg/blds/directxtk/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
