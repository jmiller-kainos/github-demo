# Git Push

`git push` uploads your local commits to a remote repository.

## What it does

`git push` sends commits from your local branch to a branch on a remote (usually `origin`).
It does not push unstaged or uncommitted changes.

## Basic syntax

```bash
git push
git push <remote> <branch>
```

## Common examples

```bash
# Push current branch to its tracked remote branch
git push

# Push local main to origin/main
git push origin main

# Push and set upstream tracking on first push
git push -u origin feature/new-docs
```

## When to use it

- After creating one or more meaningful commits.
- To share your changes with collaborators.
- To back up your local work to the remote.

## Good to know

- Push can be rejected if the remote has newer commits. In that case, pull or fetch and integrate first.
- Avoid force pushing shared branches unless your team explicitly agrees.