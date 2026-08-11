---
name: postgres-efcore-guide
description: Best practice Entity Framework Core (EF Core) with Npgsql PostgreSQL integration for .NET 8+ Web APIs, including DbContext, Migrations, Indexing, and Connection Pooling.
---

# PostgreSQL & EF Core Best Practices Guide (.NET 8+)

This skill provides production-ready guidance for building relational database models, executing migrations, and querying PostgreSQL with EF Core in C#.

---

## 🛠️ 1. Required NuGet Packages

```powershell
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.EntityFrameworkCore.Design
```

---

## ⚙️ 2. DbContext Registration & Connection String

In `Program.cs`:

```csharp
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection"), npgsqlOptions =>
    {
        npgsqlOptions.EnableRetryOnFailure(
            maxRetryCount: 5,
            maxRetryDelay: TimeSpan.FromSeconds(10),
            errorCodesToAdd: null);
    }));
```

`appsettings.json`:
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Host=localhost;Port=5432;Database=sep490_db;Username=postgres;Password=postgrespassword"
  }
}
```

---

## 🚀 3. Migration Commands

```bash
# Add a new migration
dotnet ef migrations add InitialCreate

# Update database
dotnet ef database update
```
