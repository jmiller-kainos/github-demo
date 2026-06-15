# Beginner Workflow: From Scratch to Push

This guide shows the Git commands in the order you would typically run them when creating a project from scratch and pushing it to GitHub.

## Goal

You have a new local folder and want to:

- Turn it into a Git repository.
- Save your first changes.
- Connect to GitHub.
- Push your work.

## Command order in practice

```bash

# 1. Start Git tracking in this folder
git init

# 2. Check current repo status
git status

# 3. Add files to staging
git add .

# 4. Create your first commit
git commit -m "Initial commit"

# 5. Create/connect a remote repository (replace with your URL)
git remote add origin https://github.com/your-username/my-project.git

# 6. Rename local branch to main (common standard)
git branch -M main

# 7. Push commits and set upstream branch
git push -u origin main
```

## What each step is doing

- `git init`: Creates a local Git repository in your folder.
- `git status`: Shows what Git sees as changed, staged, or untracked.
- `git add .`: Stages all current file changes.
- `git commit -m "Initial commit"`: Saves a snapshot of staged files.
- `git remote add origin ...`: Links your local repo to GitHub.
- `git branch -M main`: Ensures your main branch is named `main`.
- `git push -u origin main`: Uploads your commits and remembers the remote branch.

## After your first push

For normal day-to-day updates, you usually repeat:

```bash
git status
git add .
git commit -m "Describe your change"
git push
```

## Beginner tips

- Run `git status` often. It helps avoid mistakes.
- Pull before pushing if others are working in the same repository:

```bash
git pull
```