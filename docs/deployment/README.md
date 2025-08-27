# Deployment Guide

This guide covers various deployment options for the NexNest Monorepo Starter.

## Table of Contents

- [Overview](#overview)
- [Deployment Options](#deployment-options)
- [Environment Configuration](#environment-configuration)
- [Database Setup](#database-setup)
- [SSL/HTTPS](#sslhttps)

## Overview

NexNest Monorepo Starter consists of:

- **Frontend**: Next.js application
- **Backend**: NestJS API
- **Database**: MongoDB
- **Cache**: Redis

## Deployment Options

### 1. Vercel (Recommended for Frontend)

**Best for**: Frontend deployment with automatic scaling

#### Setup

1. **Connect your repository to Vercel**
2. **Configure build settings:**

   ```bash
   Build Command: cd apps/frontend && pnpm build
   Output Directory: apps/frontend/.next
   Install Command: pnpm install
   ```

3. **Set environment variables:**

   ```bash
   NEXT_PUBLIC_API_URL=https://your-backend-domain.com
   ```

4. **Deploy backend separately** (see other options below)

#### Advantages

- ✅ Automatic deployments
- ✅ Global CDN
- ✅ Built-in analytics
- ✅ Easy rollbacks

### 2. Railway

**Best for**: Full-stack deployment with database

#### Setup

1. **Connect your repository**
2. **Create services:**
   - Frontend service (Next.js)
   - Backend service (NestJS)
   - MongoDB database
   - Redis cache

3. **Configure environment variables**
4. **Set up custom domains**

#### Advantages

- ✅ Full-stack deployment
- ✅ Built-in databases
- ✅ Automatic scaling
- ✅ Easy environment management

### 3. Docker Deployment

**Best for**: Self-hosted or cloud VPS

#### Setup

1. **Build and deploy:**

   ```bash
   # Production build
   pnpm docker:prod

   # Staging build
   pnpm docker:staging

   # Or manual deployment
   docker-compose -f docker-compose.prod.yml up -d
   docker-compose -f docker-compose.staging.yml up -d
   ```

2. **Configure reverse proxy (nginx):**

   ```nginx
   server {
       listen 80;
       server_name your-domain.com;

       location / {
           proxy_pass http://localhost:3000;
       }

       location /api {
           proxy_pass http://localhost:3001;
       }
   }
   ```

#### Advantages

- ✅ Full control
- ✅ Cost-effective
- ✅ Custom configurations
- ✅ On-premise deployment

### 4. AWS (ECS/Fargate)

**Best for**: Enterprise-scale deployments

#### Setup

1. **Create ECR repositories**
2. **Build and push Docker images**
3. **Create ECS cluster and services**
4. **Set up RDS for database**
5. **Configure Application Load Balancer**

#### Advantages

- ✅ Enterprise-grade
- ✅ High availability
- ✅ Advanced monitoring
- ✅ Auto-scaling

### 5. DigitalOcean App Platform

**Best for**: Simple full-stack deployment

#### Setup

1. **Connect your repository**
2. **Create app with multiple components**
3. **Configure environment variables**
4. **Set up managed databases**

#### Advantages

- ✅ Simple setup
- ✅ Managed databases
- ✅ Automatic scaling
- ✅ Built-in monitoring

## Environment Configuration

### Frontend Environment Variables

```bash
# Production
NEXT_PUBLIC_API_URL=https://api.yourdomain.com
NEXT_PUBLIC_APP_NAME=Your App Name
NODE_ENV=production
```

### Backend Environment Variables

```bash
# Production
NODE_ENV=production
PORT=3001
DATABASE_URL=mongodb://your-database-url
JWT_SECRET=your-secure-jwt-secret
JWT_EXPIRES_IN=7d
LOG_LEVEL=info
```

### Environment-Specific Configs

#### Development

```bash
# Use .env.local files
cp apps/frontend/.env.example apps/frontend/.env.local
cp apps/backend/.env.example apps/backend/.env.local
```

#### Staging

```bash
# Use .env.staging files
cp apps/frontend/.env.example apps/frontend/.env.staging
cp apps/backend/.env.example apps/backend/.env.staging
```

#### Production

```bash
# Set environment variables in your deployment platform
# Never commit .env.production files
```

## Database Setup

### MongoDB Options

1. **MongoDB Atlas** (Recommended)
   - Managed MongoDB service
   - Automatic backups
   - Global distribution

2. **Self-hosted MongoDB**
   - Install on your server
   - Configure replication
   - Set up backups

3. **Railway MongoDB**
   - Built-in with Railway
   - Automatic scaling
   - Easy management

### Redis Options

1. **Redis Cloud**
   - Managed Redis service
   - High availability
   - Automatic scaling

2. **Self-hosted Redis**
   - Install on your server
   - Configure persistence
   - Set up monitoring

3. **Railway Redis**
   - Built-in with Railway
   - Automatic scaling

## SSL/HTTPS

### Automatic SSL (Recommended)

Most platforms provide automatic SSL:

- **Vercel**: Automatic SSL
- **Railway**: Automatic SSL
- **DigitalOcean**: Automatic SSL
- **AWS**: Certificate Manager

### Manual SSL Setup

For self-hosted deployments:

1. **Obtain SSL certificate** (Let's Encrypt)
2. **Configure nginx:**

   ```nginx
   server {
       listen 443 ssl;
       server_name your-domain.com;

       ssl_certificate /path/to/cert.pem;
       ssl_certificate_key /path/to/key.pem;

       # ... rest of configuration
   }
   ```

## Monitoring & Analytics

### Recommended Tools

1. **Application Monitoring**
   - Sentry (error tracking)
   - LogRocket (session replay)
   - New Relic (performance)

2. **Infrastructure Monitoring**
   - Uptime Robot (uptime)
   - Pingdom (performance)
   - StatusCake (monitoring)

3. **Analytics**
   - Google Analytics
   - Vercel Analytics
   - Plausible Analytics

## Troubleshooting

### Common Issues

1. **Build Failures**
   - Check Node.js version
   - Verify dependencies
   - Review build logs

2. **Environment Variables**
   - Ensure all required variables are set
   - Check variable names (case-sensitive)
   - Verify in deployment platform

3. **Database Connection**
   - Check connection string
   - Verify network access
   - Test connection locally

4. **CORS Issues**
   - Configure allowed origins
   - Check frontend API URL
   - Verify SSL certificates

### Support

- Check platform-specific documentation
- Review deployment logs
- Contact platform support
- Check project issues
