@echo off
setlocal
copy /b SSD-1B-modelspec.part1+SSD-1B-modelspec.part2+SSD-1B-modelspec.part3 SSD-1B-modelspec.safetensors
echo.
echo Reassembly complete.
echo Created: SSD-1B-modelspec.safetensors
echo.
pause
