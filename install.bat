@echo off
chcp 65001 >nul
title ⚡ Cài Đặt Agent Skills - TaHoang715
echo ========================================================
echo   📦 CÀI ĐẶT TOÀN BỘ 1,800+ SKILLS VÀO ANTIGRAVITY IDE
echo ========================================================
echo.

set "TARGET_DIR=%USERPROFILE%\.gemini\config\skills"
echo Đang sao chép các kỹ năng vào: %TARGET_DIR% ...
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

xcopy /E /I /Y /Q "skills\*" "%TARGET_DIR%\" >nul

echo.
echo ========================================================
echo   🎉 CÀI ĐẶT THÀNH CÔNG 100%!
echo   Antigravity IDE sẽ tự động kích hoạt các kỹ năng này.
echo ========================================================
echo.
pause
