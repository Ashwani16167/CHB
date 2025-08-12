#!/bin/bash

echo "🚀 Chhupa Hua Bharat - Vercel Deployment Script"
echo "==============================================="

# Check if vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

echo "📝 Adding changes to Git..."
git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

echo ""
echo "🚀 Deploying to Vercel..."
vercel --prod

echo ""
echo "✨ Deployment Options:"
echo "1. Automatic Deploy (Recommended):"
echo "   - Go to https://vercel.com"
echo "   - Connect your GitHub repo: Ashwani16167/CHB"
echo "   - Auto-deploy will be enabled"
echo ""
echo "2. Manual Deploy:"
echo "   - Run: vercel --prod"
echo ""
echo "🌐 Your site will be live at: https://chb.vercel.app"
