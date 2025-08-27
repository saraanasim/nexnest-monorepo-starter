# Faith.Online Monorepo

A Christ-centered social media platform built with Next.js and NestJS.

## Project Structure

```
faith-online/
├── apps/
│   ├── frontend/     # Next.js Frontend
│   └── backend/      # NestJS Backend
├── packages/
│   └── shared/       # Shared types, utilities, and constants
└── docs/             # Project documentation
```

## Prerequisites

- Node.js 18+
- pnpm 8+

## Getting Started

### Installation

```bash
# Install pnpm globally (if not already installed)
npm install -g pnpm

# Install all dependencies
pnpm install

# Start development servers
pnpm dev
```

### Available Scripts

- `pnpm dev` - Start all applications in development mode
- `pnpm build` - Build all applications and packages
- `pnpm lint` - Run linting across all packages
- `pnpm test` - Run tests across all packages
- `pnpm clean` - Clean all build artifacts
- `pnpm start` - Start production servers
- `pnpm start:prod` - Start production servers (alternative)

### Development

- Frontend: http://localhost:3000
- Backend API: http://localhost:3001

## Tech Stack

- **Monorepo**: Turborepo + pnpm workspaces
- **Frontend**: Next.js 14, TypeScript, Tailwind CSS
- **Backend**: NestJS, TypeScript
- **Package Manager**: pnpm

## Build System

Turborepo provides:

- Incremental builds with intelligent caching
- Parallel execution of tasks
- Remote caching for CI/CD
- Dependency graph optimization

## Shared Package

The `packages/shared` directory is ready for future shared code:

- **types/**: Shared TypeScript interfaces and types
- **utils/**: Shared utility functions
- **constants/**: Shared constants and enums
- **config/**: Shared configuration objects

To use the shared package in your apps, add it as a dependency:
```bash
pnpm add @faith-online/shared --filter @faith-online/frontend
pnpm add @faith-online/shared --filter @faith-online/backend
``` 