#!/bin/bash
set -e

echo "🔨 Building Money Management Pro..."

# Step 1: Type check
echo "1/4 Type checking..."
npx tsc --noEmit --skipLibCheck

# Step 2: Build frontend
echo "2/4 Building frontend..."
npx vite build

# Step 3: Build server
echo "3/4 Building server..."
npx esbuild server/index.ts --platform=node --packages=external --bundle --format=esm --outdir=dist

# Step 4: Verify builds
echo "4/4 Verifying builds..."
if [ -f "dist/public/index.html" ] && [ -f "dist/index.js" ]; then
    echo "✅ Build successful!"
    echo "Frontend: dist/public/"
    echo "Server: dist/index.js"
else
    echo "❌ Build failed - missing files"
    exit 1
fi