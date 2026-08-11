# 🚀 HƯỚNG DẪN THIẾT LẬP CLAUDE CODE & BỘ SKILLS CHUẨN CHO ĐỒ ÁN SEP490
### 🛠️ TECH STACK DỰ ÁN: ASP.NET Core (.NET 8+) Backend & Next.js App Router Frontend

Tài liệu này hướng dẫn tất cả thành viên trong nhóm đồ án **SEP490** cài đặt và đồng bộ hóa môi trường **Claude Code & Antigravity AI Agent** cùng bộ **Skills chuyên biệt cho .NET & Next.js** giúp code sạch, đúng kiến trúc và tự động lưu vết bối cảnh dự án.

---

## 📌 1. TỔNG QUAN BỘ SKILLS CHUẨN ĐƯỢC ĐỒNG BỘ NẠP CHO AI

Bộ Skills này nạp sẵn tri thức chuyên sâu cho **.NET + Next.js**:

| Nhóm Skill | Tên Skill (.md) | Công Dụng Cho AI Agent |
|---|---|---|
| 🔷 **Backend .NET** | `dotnet-backend` | Chuẩn hóa ASP.NET Core Web API, Entity Framework Core (EF Core), DTOs, Repository Pattern, Dependency Injection (DI) & Async/Await C#. |
| ⚛️ **Frontend Next.js** | `nextjs-best-practices` | Chuẩn hóa Next.js App Router (Server Components, Client Components, Server Actions, Dynamic Routing). |
| 🧠 **Luật Karpathy** | `karpathy-claude-rules` | Ép AI tuân thủ 4 Luật Vàng (Suy nghĩ kỹ trước khi code, Tối giản, Sửa đúng vị trí phẫu thuật, Chạy test xác nhận thực tế). |
| 💾 **Bộ Nhớ Tự Động** | `agent-memory-hub` | Tự động ghi chép cấu trúc CSDL, API Endpoints và bài học dự án vào `MEMORY.md`. |
| 🔌 **API Standards** | `api-patterns` | Chuẩn hóa định dạng JSON Response, JWT Auth, Swagger/OpenAPI & Rate Limiting. |
| 🎨 **UI/UX & Components** | `ui-design-resources` | Phối màu Dark/Light Mode chuẩn HSL, Icon Lucide/Heroicons & TailwindCSS. |
| 🐻 **State Management** | `zustand-store-ts` | Quản lý State toàn cục TypeScript mượt mà với Zustand cho Next.js. |
| 🛡️ **Code Sạch & Debug** | `clean-code-best-practices` | Quản lý exception fail-fast, bắt lỗi tập trung (Global Exception Handler) & Security. |

---

## 🛠️ 2. HƯỚNG DẪN CÀI ĐẶT TỪNG BƯỚC CHO MEMBER

### BƯỚC 1: CÀI ĐẶT CLAUDE CODE CLI
Mở **PowerShell / Terminal** và chạy:

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
      "dotnet build",
      "dotnet test",
      "dotnet run",
      "dotnet ef migrations add",
      "npm test",
      "npm run dev",
      "npm run build",
      "git status",
      "git diff"
    ]
  }
}
```

> 💡 **Giải thích**: 
> * `"thinking": true`: Bật chế độ Extended Thinking giúp Claude suy nghĩ kỹ logic trước khi viết code C# & TypeScript.
> * `"allowCommands"`: Phê duyệt sẵn các lệnh `.NET` (`dotnet build`, `dotnet ef`) và `npm` để Claude tự động thực thi mà không phải xin phép rườm rà.

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

Khi khởi tạo thư mục code Đồ án **SEP490**, tạo 1 file tên là `MEMORY.md` ở thư mục gốc của dự án với nội dung mẫu:

```markdown
# 🧠 SEP490 PROJECT MEMORY (.NET 8 + NEXT.JS)

## 1. Tech Stack
- Backend: ASP.NET Core Web API (.NET 8/9), Entity Framework Core, PostgreSQL / SQL Server
- Frontend: Next.js App Router (React, TypeScript, TailwindCSS, Zustand)
- Auth: JWT Bearer Authentication / Identity

## 2. Quy chuẩn lập trình nhóm
- Backend C#: Áp dụng Controller / Service / Repository pattern, DI Injection, EF Core Async.
- Frontend React: Áp dụng Next.js App Router, Server Components cho render dữ liệu, Zustand cho state client.
- Áp dụng 4 Luật Karpathy: Suy nghĩ trước khi code, Code tối giản, Sửa chính xác, Run `dotnet build` & `npm run build` xác nhận thực tế.
```

---

## 🎯 3. CÁCH GIAO VIỆC CHO CLAUDE CODE KHI LÀM ĐỒ ÁN (.NET & NEXT.JS)

Khi mở Claude Code trong dự án (`claude`), bạn chỉ cần giao việc bằng tiếng Việt tự nhiên:

* 🔷 **Làm Backend ASP.NET Core**: 
  > *"Tham khảo skill dotnet-backend và api-patterns để viết Controller & Service quản lý Người dùng bằng EF Core C#. Tạo DTOs riêng, dùng Async/Await và trả về JSON chuẩn ResultResponse."*
* ⚛️ **Làm Frontend Next.js**: 
  > *"Tham khảo skill nextjs-best-practices và ui-design-resources để viết trang Dashboard bằng Next.js App Router (React/TypeScript). Dùng TailwindCSS màu Dark Mode Slate-950 và gọi API .NET vừa viết."*
* 🗄️ **Làm Database / Migration**: 
  > *"Tham khảo skill database-admin để tạo Migration EF Core cho bảng Orders và Products, chạy `dotnet ef database update` và kiểm tra mối quan hệ 1-N."*
* 🧪 **Sửa Bug & Kiểm thử**: 
  > *"Đọc file MEMORY.md, phân tích nguyên nhân lỗi trong Controller/Page này, sửa đúng vị trí và chạy `dotnet build` / `npm run build` xác nhận."*

---

🎉 **CHÚC NHÓM SEP490 LÀM ĐỒ ÁN THÀNH CÔNG VÀ ĐẠT ĐIỂM 10 TUYỆT ĐỐI!** 🚀
