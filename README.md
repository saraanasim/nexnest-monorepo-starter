# NexNest Monorepo Starter

A production-ready monorepo template with Next.js frontend and NestJS backend, built for modern web applications.

[![CI](https://github.com/saraanasim/nexnest-monorepo-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/saraanasim/nexnest-monorepo-starter/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![pnpm](https://img.shields.io/badge/pnpm-workspace-orange.svg)](https://pnpm.io/workspaces)
[![Turborepo](https://img.shields.io/badge/Turborepo-Build%20System-blue.svg)](https://turbo.build/repo)

## ✨ Features

- ⚡ **Next.js 15** - Latest React framework with App Router
- 🚀 **NestJS 11** - Enterprise-grade Node.js framework
- 📦 **Monorepo** - Turborepo + pnpm workspaces
- 🐳 **Docker** - Multi-environment containerization
- 🔧 **TypeScript** - Full type safety across the stack
- 🎨 **Tailwind CSS v4** - Modern styling framework
- ✅ **Testing** - Jest setup for both frontend and backend
- 🔒 **Security** - ESLint, Prettier, and security scanning
- 🚦 **CI/CD** - GitHub Actions with automated testing
- 📚 **Documentation** - Comprehensive guides and examples

## 🚀 Quick Start

### Prerequisites

- Node.js 18+
- pnpm 8+
- Docker (optional)

### 1. Use This Template

```bash
# Click "Use this template" on GitHub, or clone directly
git clone https://github.com/saraanasim/nexnest-monorepo-starter.git your-project-name
cd your-project-name
```

### 2. Install Dependencies

```bash
pnpm install
```

### 3. Set Up Environment Variables

```bash
# Copy environment examples
cp apps/frontend/.env.example apps/frontend/.env.local
cp apps/backend/.env.example apps/backend/.env.local

# Edit with your values
nano apps/frontend/.env.local
nano apps/backend/.env.local
```

### 4. Start Development

```bash
# Start all services
pnpm dev

# Or start individually
pnpm dev --filter @saraanasim/frontend
pnpm dev --filter @saraanasim/backend
```

## 📁 Project Structure

```
nexnest-monorepo-starter/
├── apps/
│   ├── frontend/          # Next.js 15 application
│   └── backend/           # NestJS 11 API
├── packages/
│   └── shared/            # Shared utilities and types
├── docs/
│   └── deployment/        # Deployment guides
├── .github/
│   └── workflows/         # CI/CD pipelines
└── docker-compose.*.yml   # Multi-environment Docker configs
```

## 🛠️ Available Scripts

### Development

```bash
pnpm dev              # Start all development servers
pnpm build            # Build all applications
pnpm lint             # Lint all packages
pnpm test             # Run all tests
pnpm type-check       # TypeScript type checking
pnpm format           # Format code with Prettier
```

### Docker

```bash
pnpm docker:dev       # Start development environment
pnpm docker:staging   # Start staging environment
pnpm docker:prod      # Start production environment
pnpm docker:build:all # Build all Docker images
```

### Individual Apps

```bash
# Frontend
pnpm dev --filter @saraanasim/frontend
pnpm build --filter @saraanasim/frontend

# Backend
pnpm dev --filter @saraanasim/backend
pnpm build --filter @saraanasim/backend
```

## 🌐 Development URLs

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:3001
- **MongoDB**: localhost:27017
- **Redis**: localhost:6379

## 🚀 Deployment

This template supports multiple deployment strategies:

- **Vercel** - Frontend deployment
- **Railway** - Full-stack deployment
- **Docker** - Self-hosted deployment
- **AWS** - Enterprise deployment

See [deployment guides](docs/deployment/) for detailed instructions.

## 🧪 Testing

```bash
# Run all tests
pnpm test

# Run tests with coverage
pnpm test:cov

# Run tests in watch mode
pnpm test:watch
```

## 🔧 Configuration

### Environment Variables

Each app has its own environment configuration:

- `apps/frontend/.env.local` - Frontend development
- `apps/backend/.env.local` - Backend development
- `apps/*/.env.staging` - Staging environment
- `apps/*/.env.production` - Production environment

### Code Quality

- **ESLint** - Code linting and error detection
- **Prettier** - Code formatting
- **TypeScript** - Type checking
- **Husky** - Git hooks for quality gates

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Saraan Asim** - Full Stack Developer

- 🌐 [Portfolio](https://saraanasim.com/)
- 💼 [LinkedIn](https://www.linkedin.com/in/saraan-asim/)
- 🐙 [GitHub](https://github.com/saraanasim)

## 🙏 Acknowledgments

- [Next.js](https://nextjs.org/) - React framework
- [NestJS](https://nestjs.com/) - Node.js framework
- [Turborepo](https://turbo.build/) - Build system
- [pnpm](https://pnpm.io/) - Package manager

## 📊 Template Stats

![GitHub stars](https://img.shields.io/github/stars/saraanasim/nexnest-monorepo-starter)
![GitHub forks](https://img.shields.io/github/forks/saraanasim/nexnest-monorepo-starter)
![GitHub issues](https://img.shields.io/github/issues/saraanasim/nexnest-monorepo-starter)
![GitHub pull requests](https://img.shields.io/github/issues-pr/saraanasim/nexnest-monorepo-starter)

---

⭐ **Star this repository if you find it helpful!**
