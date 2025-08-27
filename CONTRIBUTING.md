# Contributing to Faith.Online

Thank you for your interest in contributing to Faith.Online! This document provides guidelines and information for contributors.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Code Standards](#code-standards)
- [Testing](#testing)
- [Pull Request Process](#pull-request-process)
- [Commit Message Guidelines](#commit-message-guidelines)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code.

## Getting Started

### Prerequisites

- Node.js 18+
- pnpm 8+
- Git

### Setup

1. **Fork the repository**
2. **Clone your fork:**

   ```bash
   git clone https://github.com/your-username/faith-online.git
   cd faith-online
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

5. **Start development servers:**
   ```bash
   pnpm dev
   ```

## Development Workflow

### Branch Strategy

- `main` - Production-ready code
- `develop` - Integration branch for features
- `feature/feature-name` - Feature development
- `bugfix/bug-description` - Bug fixes
- `hotfix/urgent-fix` - Critical production fixes

### Creating a Feature

1. **Create a feature branch:**

   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**

3. **Run tests and linting:**

   ```bash
   pnpm test
   pnpm lint
   pnpm type-check
   ```

4. **Commit your changes** (see commit message guidelines below)

5. **Push and create a pull request**

## Code Standards

### TypeScript

- Use TypeScript for all new code
- Enable strict mode in `tsconfig.json`
- Use proper type annotations
- Avoid `any` type - use proper types or `unknown`

### Code Style

- Use Prettier for formatting
- Follow ESLint rules
- Use meaningful variable and function names
- Add JSDoc comments for public APIs

### File Organization

- Keep files focused and single-purpose
- Use consistent naming conventions
- Group related functionality together
- Follow the established project structure

## Testing

### Running Tests

```bash
# Run all tests
pnpm test

# Run tests in watch mode
pnpm test:watch

# Run tests with coverage
pnpm test:cov
```

### Writing Tests

- Write tests for all new functionality
- Use descriptive test names
- Follow AAA pattern (Arrange, Act, Assert)
- Mock external dependencies
- Test both success and error cases

## Pull Request Process

1. **Ensure your code follows the standards**
2. **Update documentation if needed**
3. **Add tests for new functionality**
4. **Update the CHANGELOG.md if applicable**
5. **Create a pull request with a clear description**
6. **Request review from maintainers**

### Pull Request Template

```markdown
## Description

Brief description of changes

## Type of Change

- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing

- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed

## Checklist

- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] CHANGELOG updated (if applicable)
```

## Commit Message Guidelines

We follow [Conventional Commits](https://www.conventionalcommits.org/) for commit messages.

### Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation changes
- `style` - Code style changes (formatting, etc.)
- `refactor` - Code refactoring
- `perf` - Performance improvements
- `test` - Adding or updating tests
- `build` - Build system changes
- `ci` - CI/CD changes
- `chore` - Maintenance tasks
- `revert` - Revert previous commit

### Examples

```bash
feat(auth): add JWT authentication
fix(api): resolve user creation bug
docs(readme): update installation instructions
style(frontend): format components with prettier
refactor(backend): extract user service logic
test(auth): add authentication unit tests
```

### Rules

- Use lowercase for type and description
- Don't end description with a period
- Keep description under 72 characters
- Use imperative mood ("add" not "added")

## Getting Help

- Check existing issues and pull requests
- Search documentation
- Ask questions in discussions
- Contact maintainers for urgent issues

## License

By contributing, you agree that your contributions will be licensed under the same license as the project.
