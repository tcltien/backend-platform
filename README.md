# Backend Platform

Hệ thống Microservices hiện đại được xây dựng trên nền tảng **Monorepo**, tối ưu cho hiệu năng và khả năng mở rộng.

## Kiến trúc hệ thống

Dự án sử dụng mô hình **Microservices** kết hợp với **Turborepo** để quản lý mã nguồn tập trung nhưng triển khai độc lập.

backend-platform
│
├── apps
│ ├── gateway # API Gateway (Điểm tiếp nhận và điều phối request)
│ ├── auth-service # Dịch vụ xác thực & ủy quyền (Authentication)
│ ├── core-service # Xử lý logic nghiệp vụ chính (Domain logic)
│ └── worker-service # Xử lý các tác vụ nền (Background jobs)
│
├── packages
│ ├── logger # Thư viện ghi log dùng chung
│ ├── jwt # Tiện ích xử lý mã hóa và giải mã JWT
│ └── config # Trình tải và quản lý biến môi trường (Env loader)
│
├── docker # Chứa các Dockerfile riêng biệt cho từng dịch vụ
├── docker-compose.yml # Cấu hình khởi chạy toàn bộ hệ thống
├── turbo.json # Cấu hình pipeline xây dựng của Turborepo
├── pnpm-workspace.yaml # Định nghĩa không gian làm việc của pnpm
└── tsconfig.base.json # Cấu hình TypeScript gốc cho toàn bộ repo

Runtime: Node.js v20 (LTS)
Framework: Fastify (High performance framework)
Language: TypeScript (Strict typing)
Package Manager: pnpm Workspaces
Monorepo Tool: Turborepo
Virtualization: Docker (Multi-stage build)

---

Requirement

1.  Setup Node.js 20+
    Setup pnpm: npm install -g pnpm
    Setup Docker Desktop

2.  Quick Start
    - pnpm install
3.  Service build
    - pnpm build
4.  Docker build/run
    - docker compose build
    - docker compose up
