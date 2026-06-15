# Git Branch

`git branch` is used to create, list, rename, and delete branches.

## What it does

Branches let you work on changes in isolation without affecting other lines of development.

With `git branch`, you can:

- View available local branches.
- Create a new branch from your current commit.
- Rename a branch.
- Delete branches that are no longer needed.

## Basic syntax

```bash
git branch
git branch <branch-name>
git branch -m <new-name>
git branch -d <branch-name>
```

## Common examples

```bash
# List local branches
git branch

# Create a new branch
git branch feature/add-login

# Rename the current branch
git branch -m feature/login-improvements

# Delete a fully merged branch
git branch -d feature/add-login
```

## When to use it

- Before starting new work that should be isolated from `main`.
- When cleaning up old branches after merge.
- When renaming a branch to match team naming conventions.

## Good to know

- `git branch` creates a branch but does not switch to it.
- Use `git checkout <branch-name>` to switch branches after creating one.
- Use `git checkout -b <branch-name>` to create and switch in one command.
