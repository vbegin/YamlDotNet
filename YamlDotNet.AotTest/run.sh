#!/bin/sh
set -e
xbuild /p:Configuration=Debug-AOT /t:Rebuild YamlDotNet.sln
mono --aot=full YamlDotNet.AotTest/bin/Debug/YamlDotNet.dll
mono --aot=full YamlDotNet.AotTest/bin/Debug/YamlDotNet.AotTest.exe
mono --full-aot YamlDotNet.AotTest/bin/Debug/YamlDotNet.AotTest.exe
