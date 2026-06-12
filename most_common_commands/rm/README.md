# Git Rm

`git rm` removes files from Git tracking and stages that removal for commit.

## What it does

`git rm` tells Git a tracked file should be deleted from the project history moving forward.
The removal is staged, so it is recorded after the next commit.

## Basic syntax

```bash
git rm <file>
git rm --cached <file>
```

## Common examples

```bash
# Remove file from disk and stage deletion
git rm old-config.xml

# Stop tracking file but keep it on disk
git rm --cached secrets.local
```

## When to use it

- Deleting tracked files from the repository.
- Removing files from version control while keeping local copies (`--cached`).

## Good to know

- `git rm` is for tracked files. For untracked files, use normal file deletion.
- `git rm --cached` is often used when adding files to `.gitignore`.