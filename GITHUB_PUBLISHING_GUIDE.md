# Publishing to GitHub - Step by Step Guide

## ⚠️ IMPORTANT: Before You Publish

Your `.env` file contains sensitive tokens and API keys that should NEVER be committed to GitHub!
The `.gitignore` file has been created to protect these files automatically.

## Steps to Publish

### 1. Verify Sensitive Files Are Protected

Check that `.gitignore` exists and contains:

```
.env
.env.local
node_modules/
```

### 2. Initialize Git Repository

```powershell
# Navigate to your project directory
cd C:\Users\Cahya\Documents\Sena

# Initialize git (if not already done)
git init

# Add all files (sensitive files will be automatically excluded)
git add .

# Create your first commit
git commit -m "Initial commit: Sena Discord Bot"
```

### 3. Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `sena-discord-bot` (or your preferred name)
3. Description: "Discord bot with music playback, osu! stats, Valorant highlights, and more"
4. Choose **Public** or **Private**
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

### 4. Connect Local Repository to GitHub

GitHub will show you commands like these - copy and run them:

```powershell
# Add GitHub as remote origin (replace USERNAME with your GitHub username)
git remote add origin https://github.com/USERNAME/sena-discord-bot.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

### 5. Verify Upload

1. Refresh your GitHub repository page
2. **CRITICAL CHECK**: Make sure `.env` is NOT visible in the file list
3. Verify that `.env.example` IS visible
4. Check that `README.md` displays correctly

## Future Updates

After making changes to your code:

```powershell
# Stage your changes
git add .

# Commit with a descriptive message
git commit -m "Add feature: description of what you changed"

# Push to GitHub
git push
```

## Security Checklist

- [ ] `.env` file is NOT on GitHub
- [ ] `.env.example` IS on GitHub (without real tokens)
- [ ] `node_modules/` folder is NOT on GitHub
- [ ] All API keys and tokens are stored only in local `.env` file
- [ ] `.gitignore` is working correctly

## If You Accidentally Committed Secrets

If you accidentally pushed your `.env` file or tokens to GitHub:

1. **IMMEDIATELY** regenerate all tokens/API keys:

   - Discord: https://discord.com/developers/applications
   - osu!: https://osu.ppy.sh/home/account/edit#oauth
   - Valorant/Henrik API: https://docs.henrikdev.xyz/

2. Remove the file from git history:

```powershell
git rm --cached .env
git commit -m "Remove sensitive .env file"
git push
```

3. Update your local `.env` with new tokens

## Getting Help

- Git documentation: https://git-scm.com/doc
- GitHub guides: https://guides.github.com/
- Discord bot security: https://discord.com/developers/docs/topics/oauth2#bot-authorization-flow
