@echo off

rem To get the setup.bat script, you can install it from PortableBuildTools:
rem https://github.com/Data-Oriented-House/PortableBuildTools/releases

where cl.exe > nul 2>&1
if %errorlevel% neq 0 (call devenv.bat)

SET TITLE=Game
SET DEBUG=1
SET IFLAGS=/Iinclude
SET CFLAGS=/Fe%TITLE% /nologo /W4 /wd4152 /wd4029 /D_CRT_SECURE_NO_WARNINGS /GR /EHa /Oi /fp:fast /FC /INCREMENTAL:NO
SET LIBS=/link /libpath:lib /NODEFAULTLIB:libcmtd /NODEFAULTLIB:libcmt raylib.lib user32.lib gdi32.lib winmm.lib shell32.lib kernel32.lib

if "%DEBUG%" == "1" (
  cl %IFLAGS% src/main.c /Od /MTd /Zi /Fm /DDEBUG=1 %CFLAGS% %LIBS% > output
  type output
  del /F output > nul
) else (
  cl %IFLAGS% src/main.c /Ox /MT /DDEBUG=0 %CFLAGS% %LIBS%
  type output
  del /F output > nul
)
