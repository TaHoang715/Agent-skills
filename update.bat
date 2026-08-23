@echo off
chcp 65001 >nul
title 🔄 Cập Nhật Agent Skills - TaHoang715
echo ========================================================
echo   🚀 TỰ ĐỘNG CẬP NHẬT KHO AGENT SKILLS LÊN BẢN MỚI NHẤT
echo ========================================================
echo.

echo [1/3] Đang tải bản cập nhật mới nhất từ GitHub...
git pull origin main
if %errorlevel% neq 0 (
    echo [LỖI] Không thể tải từ GitHub. Vui lòng kiểm tra kết nối mạng!
    pause
    exit /b
)

echo.
echo [2/3] Đang đồng bộ kỹ năng vào Antigravity IDE...
set "TARGET_DIR=%USERPROFILE%\.gemini\config\skills"
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

xcopy /E /I /Y /Q "skills\*" "%TARGET_DIR%\" >nul

echo.
echo [3/3] Hoàn tất!
echo ========================================================
echo   🎉 TẤT CẢ SKILLS ĐÃ ĐƯỢC CẬP NHẬT VÀ ĐỒNG BỘ THÀNH CÔNG!
echo ========================================================
echo.
pause
