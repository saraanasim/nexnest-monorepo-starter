# Vercel Deployment Guide

This guide covers deploying the Faith.Online frontend to Vercel.

## Prerequisites

- Vercel account
- GitHub repository connected to Vercel
- Backend deployed (see other deployment guides)

## Setup

### 1. Connect Repository

1. **Go to [Vercel Dashboard](https://vercel.com/dashboard)**
2. **Click "New Project"**
3. **Import your GitHub repository**
4. **Select the repository**

### 2. Configure Build Settings

Set the following build configuration:

```json
{
  "buildCommand": "cd apps/frontend && pnpm build",
  "outputDirectory": "apps/frontend/.next",
  "installCommand": "pnpm install",
  "framework": "nextjs"
}
```

### 3. Environment Variables

Add the following environment variables in Vercel:

```bash
# Required
NEXT_PUBLIC_API_URL=https://your-backend-domain.com
NEXT_PUBLIC_APP_NAME=Faith.Online

# Optional
NODE_ENV=production
```

### 4. Root Directory Configuration

Since this is a monorepo, you need to configure the root directory:

1. **Go to Project Settings**
2. **Under "Build & Development Settings"**
3. **Set "Root Directory" to `apps/frontend`**

### 5. Build Configuration

Create a `vercel.json` file in the `apps/frontend` directory:

```json
{
  "buildCommand": "pnpm build",
  "outputDirectory": ".next",
  "installCommand": "pnpm install",
  "framework": "nextjs"
}
```

## Deployment

### Automatic Deployments

Vercel will automatically deploy when you:

- Push to the `main` branch
- Create a pull request
- Merge a pull request

### Manual Deployment

1. **Go to Vercel Dashboard**
2. **Select your project**
3. **Click "Deploy"**
4. **Choose branch and deploy**

## Custom Domain

### Setup Custom Domain

1. **Go to Project Settings**
2. **Click "Domains"**
3. **Add your domain**
4. **Configure DNS records**

### DNS Configuration

Add the following DNS records:

```
Type: CNAME
Name: www
Value: cname.vercel-dns.com

Type: A
Name: @
Value: 76.76.19.19
```

## Environment-Specific Deployments

### Preview Deployments

Vercel automatically creates preview deployments for:

- Pull requests
- Feature branches
- Development branches

### Production Deployment

Production deployments are triggered by:

- Pushes to `main` branch
- Manual deployments from dashboard

## Monitoring

### Vercel Analytics

1. **Enable Vercel Analytics** in project settings
2. **View analytics** in the dashboard
3. **Monitor performance** and user behavior

### Error Tracking

1. **Connect Sentry** (optional)
2. **Monitor errors** in real-time
3. **Set up alerts** for critical issues

## Troubleshooting

### Common Issues

1. **Build Failures**
   - Check build logs in Vercel dashboard
   - Verify environment variables
   - Ensure all dependencies are installed

2. **API Connection Issues**
   - Verify `NEXT_PUBLIC_API_URL` is correct
   - Check CORS configuration on backend
   - Ensure backend is accessible

3. **Environment Variables**
   - Verify all required variables are set
   - Check variable names (case-sensitive)
   - Redeploy after adding variables

### Support

- Check [Vercel Documentation](https://vercel.com/docs)
- Review build logs
- Contact Vercel support
- Check project issues
