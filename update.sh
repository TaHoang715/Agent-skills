#!/bin/bash
echo "========================================================"
echo "  🚀 TỰ ĐỘNG CẬP NHẬT KHO AGENT SKILLS LÊN BẢN MỚI NHẤT"
echo "========================================================"
echo ""

echo "[1/2] Đang tải bản cập nhật mới nhất từ GitHub..."
git pull origin main

echo ""
echo "[2/2] Đang đồng bộ kỹ năng vào Antigravity IDE..."
TARGET_DIR="$HOME/.gemini/config/skills"
mkdir -p "$TARGET_DIR"

cp -r skills/* "$TARGET_DIR/"

echo ""
echo "========================================================"
echo "  🎉 TẤT CẢ SKILLS ĐÃ ĐƯỢC CẬP NHẬT VÀ ĐỒNG BỘ THÀNH CÔNG!"
echo "========================================================"
