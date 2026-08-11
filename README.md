# 🚀 HƯỚNG DẪN THIẾT LẬP MÔI TRƯỜNG CLAUDE CODE & BỘ SKILLS CHUẨN ĐỒ ÁN SEP490

Tài liệu này hướng dẫn tất cả thành viên trong nhóm đồ án **SEP490** cài đặt và đồng bộ hóa môi trường **Claude Code AI Agent** cùng bộ **Skills & Cấu hình chuẩn** giúp làm việc chung hiệu quả, code sạch và không mất bối cảnh dự án.

---

## 📌 1. TỔNG QUAN HỆ THỐNG SKILLS ĐƯỢC ĐỒNG BỘ

Bộ cấu hình này nạp sẵn 5 mảng tri thức hàng đầu thế giới vào AI:
1. 🧠 **Quy tắc Karpathy (`karpathy-claude-rules`)**: Ép AI suy nghĩ trước khi code, viết code tối giản, sửa chính xác như phẫu thuật và tự kiểm tra kết quả thật.
2. 💾 **Bộ nhớ Agent Dài hạn (`agent-memory-hub`)**: Tự động lưu và đọc lại cấu trúc CSDL, API routes và bài học dự án qua file `MEMORY.md`.
3. 🏗️ **Kiến trúc Hệ thống (`system-architecture-guide`)**: Chuẩn hóa thiết kế CSDL (Postgres/Redis), Microservices và phân tải Backend.
4. 🛡️ **Code Sạch & Bảo mật (`clean-code-best-practices`)**: Quản lý lỗi fail-fast, bắt exception và bảo mật chống SQL Injection.
5. 🎨 **Thiết kế UI/UX (`ui-design-resources`)**: Phối màu Dark/Light Mode chuẩn HSL, icon SVG sắc nét và hiệu ứng giao diện mượt mà.

---

## 🛠️ 2. HƯỚNG DẪN CÀI ĐẶT TỪNG BƯỚC CHO MEMBER

### BƯỚC 1: CÀI ĐẶT CLAUDE CODE CLI
Mở **PowerShell / Terminal** trên máy bạn và chạy lệnh cài đặt:

```bash
# 1. Cài đặt Claude Code toàn cục
npm install -g @anthropic-ai/claude-code

# 2. Khởi chạy và đăng nhập tài khoản Anthropic
claude
```

---

### BƯỚC 2: CẤU HÌNH FILE `settings.json` CHO CLAUDE CODE

Tạo file cấu hình tại đường dẫn cá nhân của bạn:
* **Windows**: `C:\Users\<Tên_User>\.claude\settings.json`
* **Mac/Linux**: `~/.claude/settings.json`

Dán toàn bộ nội dung cấu hình chuẩn sau vào file `settings.json`:

```json
{
  "$schema": "https://json.schemastore.org/claude-code-settings.json",
  "thinking": true,
  "preferredNotifiers": ["terminal"],
  "permissions": {
    "allowCommands": [
      "npm test",
      "npm run dev",
      "npm run build",
      "python -m pytest",
      "git status",
      "git diff"
    ]
  }
}
```

> 💡 **Giải thích**: 
> * `"thinking": true`: Bật chế độ suy luận mở rộng (Extended Thinking) giúp Claude suy nghĩ kỹ logic trước khi sửa code.
> * `"allowCommands"`: Phê duyệt sẵn các lệnh build/test an toàn để Claude không hỏi xin phép rườm rà.

---

### BƯỚC 3: TẢI BỘ KHO REPOSITORIES TRI THỨC VỀ MÁY (KHUYÊN DÙNG Ổ D)

Mở **PowerShell / Terminal** và chạy lệnh clone toàn bộ kho tài nguyên về máy:

```powershell
# Tạo thư mục lưu trữ tri thức
New-Item -ItemType Directory -Path "D:\skills_resources" -Force

# Clone các bộ tri thức hàng đầu
git clone https://github.com/forrestchang/andrej-karpathy-skills.git D:\skills_resources\andrej-karpathy-skills
git clone https://github.com/TencentCloud/TencentDB-Agent-Memory.git D:\skills_resources\TencentDB-Agent-Memory
git clone https://github.com/donnemartin/system-design-primer.git D:\skills_resources\system-design-primer
git clone https://github.com/goldbergyoni/nodebestpractices.git D:\skills_resources\nodebestpractices
git clone https://github.com/bradtraversy/design-resources-for-developers.git D:\skills_resources\design-resources-for-developers
git clone https://github.com/30-seconds/30-seconds-of-code.git D:\skills_resources\30-seconds-of-code
```

---

### BƯỚC 4: BẬT BỘ NHỚ TỰ ĐỘNG `MEMORY.MD` CHO DỰ ÁN NHÓM

Khi bắt đầu mở thư mục code Đồ án **SEP490**, tạo 1 file tên là `MEMORY.md` ở thư mục gốc của dự án với nội dung mẫu:

```markdown
# 🧠 SEP490 PROJECT MEMORY

## 1. Công nghệ sử dụng
- Frontend: Next.js (TailwindCSS, Lucide Icons)
- Backend: Node.js / FastAPI (PostgreSQL, Redis)

## 2. Quy chuẩn chung
- Áp dụng 4 Luật Karpathy: Suy nghĩ trước khi code, Code tối giản, Sửa chính xác, Chạy test thực tế.
- Tự động lưu tiến độ công việc và cấu trúc API vào MEMORY.md sau mỗi phiên làm việc.
```

---

## 🎯 3. CÁCH GIAO VIỆC CHO CLAUDE CODE KHI LÀM ĐỒ ÁN

Khi mở Claude Code trong dự án (`claude`), bạn chỉ cần giao việc bằng tiếng Việt tự nhiên:

* 🏗️ **Làm Backend / API**: 
  > *"Tham khảo quy chuẩn system-architecture-guide và clean-code-best-practices để thiết kế API Đăng ký / Đăng nhập có validate dữ liệu bằng Zod và bắt lỗi fail-fast."*
* 🎨 **Làm Frontend / UI**: 
  > *"Tham khảo quy chuẩn ui-design-resources để thiết kế giao diện Dashboard theo phong cách Dark Mode (Slate-950), nhúng icon Lucide và hiệu ứng hover mượt."*
* 🧪 **Sửa Bug**: 
  > *"Đọc file MEMORY.md, phân tích nguyên nhân rễ rễ của bug này, chỉ sửa đúng những dòng code liên quan và chạy test xác nhận."*

---

🎉 **CHÚC NHÓM SEP490 LÀM ĐỒ ÁN THÀNH CÔNG VÀ ĐẠT ĐIỂM CAO NHẤT!** 🚀
