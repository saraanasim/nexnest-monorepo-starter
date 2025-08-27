# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Initial monorepo setup with Next.js frontend and NestJS backend
- Turborepo build orchestration
- Docker development and production configurations
- ESLint and Prettier configuration
- Git hooks with husky and commitlint
- CI/CD pipeline with GitHub Actions
- Comprehensive documentation

### Changed

### Deprecated

### Removed

### Fixed

### Security

## [1.0.0] - 2024-08-27

### Added

- Initial project setup
- Monorepo structure with pnpm workspaces
- Next.js 15 frontend with TypeScript and Tailwind CSS v4
- NestJS 11 backend with TypeScript
- Shared package for common utilities
- Docker containerization for development and production
- Environment variable management
- Code quality tools (ESLint, Prettier, TypeScript)
- Git hooks and commit message standards
- CI/CD pipeline with automated testing and security scanning
- Comprehensive documentation and contributing guidelines

---

## Types of Changes

- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** in case of vulnerabilities

## Version Format

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** version for incompatible API changes
- **MINOR** version for added functionality in a backwards compatible manner
- **PATCH** version for backwards compatible bug fixes

## Release Process

1. Update version in `package.json` files
2. Update this CHANGELOG.md
3. Create a git tag
4. Push changes and tag
5. Create a GitHub release
