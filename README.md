# Backend Platform

The modern Microservices system is built on a Monorepo architecture, optimized for performance and scalability.

## Project structure

The project uses a Microservices architecture combined with Turborepo to centrally manage the codebase while enabling independent deployments.

```text
backend-platform
│
├── apps
│ ├── gateway # API Gateway
│ ├── auth-service # Authentication
│ ├── core-service # Domain logic
│ └── worker-service # Background jobs
│
├── packages
│ ├── logger # Log
│ ├── jwt #
│ └── config # Env loader
│
├── docker # Dockerfile
├── docker-compose.yml # Docker config
├── turbo.json # Turborepo config
├── pnpm-workspace.yaml # pnpm config
└── tsconfig.base.json # TypeScript config
```

Runtime: Node.js v20 (LTS)
Framework: Fastify (High performance framework)
Language: TypeScript (Strict typing)
Package Manager: pnpm Workspaces
Monorepo Tool: Turborepo
Virtualization: Docker (Multi-stage build)

```

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
