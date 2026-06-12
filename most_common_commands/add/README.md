# Git Add

`git add` places file changes into the staging area for the next commit.

## What it does

Git has three key states:

- Working directory: your local edits.
- Staging area: selected changes ready to commit.
- Repository history: saved commits.

`git add` moves selected changes from working directory to staging area.

## Basic syntax

```bash
git add <file>
git add .
```

## Common examples

```bash
# Stage a single file
git add README.md

# Stage all changes in current directory and below
git add .

# Interactively stage parts of files
git add -p
```

## When to use it

- Before each commit, to choose exactly what should be included.
- When splitting unrelated edits into separate commits.

## Good to know

- Staging is selective. You can stage only part of a file if needed.
- `git status` shows what is staged and what is not.