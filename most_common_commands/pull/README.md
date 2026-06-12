# Git Pull

`git pull` updates your current local branch with changes from a remote branch.

## What it does

In most cases, `git pull` does two operations in sequence:

1. `git fetch` downloads the latest commits from the remote.
2. `git merge` merges those commits into your current branch.

If your branch is configured to rebase on pull, it uses rebase instead of merge.

## Basic syntax

```bash
git pull
git pull <remote> <branch>
```

## Common examples

```bash
# Pull from tracked upstream branch
git pull

# Pull main from origin explicitly
git pull origin main
```

## When to use it

- Before starting new work, so your branch is up to date.
- Before opening a pull request, to reduce merge conflicts.
- When teammates have pushed shared changes you need locally.

## Good to know

- If local and remote changes conflict, Git will pause and ask you to resolve conflicts.
- Pulling frequently in small increments is easier than resolving large conflict sets later.