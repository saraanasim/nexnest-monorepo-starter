# Getting Started with NexNest

## What's Included

This template provides a complete foundation for building modern web applications with:

### Frontend (Next.js 15)

- App Router with React 19
- TypeScript configuration
- Tailwind CSS v4
- ESLint and Prettier
- Jest testing setup

### Backend (NestJS 11)

- RESTful API structure
- TypeScript configuration
- Jest testing setup
- Environment configuration
- Database integration ready

### Shared Package

- Common utilities
- Shared types
- Constants
- Configuration helpers

### DevOps

- Docker multi-environment setup
- GitHub Actions CI/CD
- Code quality tools
- Git hooks

## First Steps

1. **Customize the project name**
2. **Update environment variables**
3. **Configure your database**
4. **Start building features!**

## Architecture Decisions

- **Monorepo**: Better code sharing and consistency
- **Turborepo**: Fast, incremental builds
- **pnpm**: Efficient package management
- **Docker**: Consistent environments
- **TypeScript**: Type safety across the stack

## Quick Commands

```bash
# Development
pnpm dev              # Start all services
pnpm build            # Build all apps
pnpm test             # Run all tests
pnpm lint             # Lint all code

# Docker
pnpm docker:dev       # Start dev environment
pnpm docker:staging   # Start staging
pnpm docker:prod      # Start production

# Individual apps
pnpm dev --filter @saraanasim/frontend
pnpm dev --filter @saraanasim/backend
```

## Environment Setup

### Frontend Environment

```bash
# apps/frontend/.env.local
NODE_ENV=development
NEXT_PUBLIC_API_URL=http://localhost:3001
NEXT_PUBLIC_APP_NAME=Your App Name
```

### Backend Environment

```bash
# apps/backend/.env.local
NODE_ENV=development
PORT=3001
DATABASE_URL=mongodb://localhost:27017/your-app-dev
JWT_SECRET=your-secret-key
JWT_EXPIRES_IN=7d
LOG_LEVEL=debug
```

## Database Setup

### MongoDB (Development)

```bash
# Using Docker
docker run -d -p 27017:27017 --name mongodb mongo:7.0

# Or install locally
# Follow MongoDB installation guide for your OS
```

### Redis (Optional)

```bash
# Using Docker
docker run -d -p 6379:6379 --name redis redis:7-alpine
```

## Next Steps

1. **Add your first API endpoint** in `apps/backend/src/`
2. **Create your first page** in `apps/frontend/src/app/`
3. **Add shared utilities** in `packages/shared/src/`
4. **Configure your database** connections
5. **Set up authentication** if needed
6. **Deploy to your preferred platform**

## Troubleshooting

### Common Issues

1. **Port conflicts**: Change ports in environment files
2. **Database connection**: Check MongoDB is running
3. **Build errors**: Run `pnpm clean` then `pnpm install`
4. **Docker issues**: Check Docker is running and ports are available

### Getting Help

- 📧 **Email**: saraanofficial@gmail.com
- 💼 **LinkedIn**: [Saraan Asim](https://www.linkedin.com/in/saraan-asim/)
- 🐙 **GitHub**: [@saraanasim](https://github.com/saraanasim)
- 🌐 **Portfolio**: [saraanasim.com](https://saraanasim.com/)

## Support

If you find this template helpful, consider:

- ⭐ **Starring the repository**
- 🍴 **Forking for your projects**
- 💬 **Opening issues** for improvements
- 📧 **Contacting me** for custom solutions
