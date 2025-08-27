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

## Docker Setup

### Development Environment

```bash
# Start development environment
pnpm docker:dev

# Start with rebuild
pnpm docker:dev:build

# Stop development environment
pnpm docker:dev:down

# Build development images
pnpm docker:build:dev
```

### Staging Environment

```bash
# Start staging environment
pnpm docker:staging

# Stop staging environment
pnpm docker:staging:down

# Build staging images
pnpm docker:build:staging
```

### Production Environment

```bash
# Build and start production
pnpm docker:prod

# Stop production environment
pnpm docker:prod:down

# Build production images
pnpm docker:build:prod
```

### Build All Environments

```bash
# Build all Docker images
pnpm docker:build:all
```

### Manual Docker Commands

```bash
# Development
docker-compose up
docker-compose up --build
docker-compose down

# Staging
docker-compose -f docker-compose.staging.yml up --build
docker-compose -f docker-compose.staging.yml down

# Production
docker-compose -f docker-compose.prod.yml up --build
docker-compose -f docker-compose.prod.yml down
```

### Services

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:3001
- **MongoDB**: localhost:27017
- **Redis**: localhost:6379

### Environment Variables

For production, set the following environment variables:

- `DATABASE_URL`: MongoDB connection string
- `JWT_SECRET`: JWT signing secret
- `NODE_ENV`: production
