#!/bin/bash

# NexNest Monorepo Starter - Template Setup Script
# Author: Saraan Asim (https://github.com/saraanasim)

set -e

PROJECT_NAME=${1:-"my-nexnest-project"}
ORG_NAME=${2:-"my-org"}

echo "🚀 Setting up NexNest Monorepo Starter..."
echo "Project: $PROJECT_NAME"
echo "Organization: $ORG_NAME"

# Replace project names
find . -type f \( -name "*.json" -o -name "*.md" -o -name "*.yml" -o -name "*.yaml" \) -exec sed -i "s/nexnest-monorepo-starter/$PROJECT_NAME/g" {} \;

# Replace package names
find . -name "package.json" -exec sed -i "s/@saraanasim/@$ORG_NAME/g" {} \;

# Update README
sed -i "s/nexnest-monorepo-starter/$PROJECT_NAME/g" README.md

# Remove template-specific files
rm -f scripts/setup-template.sh
rm -f TEMPLATE.md

echo "✅ Template setup complete!"
echo ""
echo "Next steps:"
echo "1. pnpm install"
echo "2. Update environment variables"
echo "3. pnpm dev"
echo ""
echo "Happy coding! 🎉"
