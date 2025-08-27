# NexNest Monorepo Starter - Setup Guide

## Quick Setup

### Option 1: Automated Setup (Recommended)

```bash
# Clone the template
git clone https://github.com/saraanasim/nexnest-monorepo-starter.git your-project-name
cd your-project-name

# Run setup script
chmod +x scripts/setup-template.sh
./scripts/setup-template.sh "your-project-name" "your-org"

# Install dependencies
pnpm install

# Start development
pnpm dev
```

### Option 2: Manual Setup

1. **Replace project names:**

   ```bash
   find . -type f \( -name "*.json" -o -name "*.md" -o -name "*.yml" -o -name "*.yaml" \) -exec sed -i "s/nexnest-monorepo-starter/your-project-name/g" {} \;
   ```

2. **Update package names:**

   ```bash
   find . -name "package.json" -exec sed -i "s/@saraanasim/@your-org/g" {} \;
   ```

3. **Install dependencies:**

   ```bash
   pnpm install
   ```

4. **Set up environment variables:**

   ```bash
   cp apps/frontend/.env.example apps/frontend/.env.local
   cp apps/backend/.env.example apps/backend/.env.local
   ```

5. **Start development:**
   ```bash
   pnpm dev
   ```

## Customization

### Environment Variables

Update the environment variables in:

- `apps/frontend/.env.local`
- `apps/backend/.env.local`

### Package Names

Update package names in all `package.json` files:

- Root: `"name": "your-project-name"`
- Frontend: `"name": "@your-org/frontend"`
- Backend: `"name": "@your-org/backend"`
- Shared: `"name": "@your-org/shared"`

### Database Configuration

Update database URLs in environment files:

- Development: `mongodb://localhost:27017/your-project-name-dev`
- Staging: `mongodb://staging-mongo:27017/your-project-name-staging`
- Production: `mongodb://production-mongo:27017/your-project-name`

## Features Included

- ✅ **Monorepo Structure** - Turborepo + pnpm workspaces
- ✅ **Next.js 15** - Latest React framework
- ✅ **NestJS 11** - Enterprise Node.js framework
- ✅ **TypeScript** - Full type safety
- ✅ **Docker** - Multi-environment support
- ✅ **CI/CD** - GitHub Actions pipeline
- ✅ **Testing** - Jest setup
- ✅ **Code Quality** - ESLint + Prettier
- ✅ **Git Hooks** - Husky + commitlint
- ✅ **Documentation** - Comprehensive guides

## Support

- 📧 **Email**: saraanofficial@gmail.com
- 💼 **LinkedIn**: [Saraan Asim](https://www.linkedin.com/in/saraan-asim/)
- 🐙 **GitHub**: [@saraanasim](https://github.com/saraanasim)
- 🌐 **Portfolio**: [saraanasim.com](https://saraanasim.com/)

## License

MIT License - feel free to use this template for your projects!
