@echo off
setlocal

set "TARGET=SSD-1B-modelspec.safetensors"

if not exist "SSD-1B-modelspec.part1" (
  echo Missing SSD-1B-modelspec.part1
  pause
  exit /b 1
)

if not exist "SSD-1B-modelspec.part2" (
  echo Missing SSD-1B-modelspec.part2
  pause
  exit /b 1
)

if not exist "SSD-1B-modelspec.part3" (
  echo Missing SSD-1B-modelspec.part3
  pause
  exit /b 1
)

echo Rebuilding %TARGET% ...
copy /b "SSD-1B-modelspec.part1"+"SSD-1B-modelspec.part2"+"SSD-1B-modelspec.part3" "%TARGET%"

if errorlevel 1 (
  echo Rebuild failed.
  pause
  exit /b 1
)

echo Done. Created %TARGET%
pause
