#!/bin/bash

echo "🚀 Chhupa Hua Bharat - Deployment Script"
echo "======================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Chhupa Hua Bharat spiritual platform"
else
    echo "📝 Adding changes to Git..."
    git add .
    git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"
fi

echo ""
echo "🔗 Next Steps:"
echo "1. Create a GitHub repository"
echo "2. Push your code:"
echo "   git remote add origin <your-github-repo-url>"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Deploy on Render:"
echo "   - Go to https://render.com"
echo "   - Click 'New +' → 'Static Site'"
echo "   - Connect your GitHub repository"
echo "   - Use these settings:"
echo "     • Build Command: echo 'Static site - no build needed'"
echo "     • Publish Directory: ."
echo "     • Auto-Deploy: Yes"
echo ""
echo "✨ Your site will be live at: https://your-app-name.onrender.com"
