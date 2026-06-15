# Git Checkout

`git checkout` switches branches and can also restore files to a previous state.

## What it does

`git checkout` is commonly used to move between branches while you work.

It can also check out specific files from another commit or branch.

## Basic syntax

```bash
git checkout <branch-name>
git checkout -b <new-branch-name>
git checkout -- <file>
```

## Common examples

```bash
# Switch to an existing branch
git checkout main

# Create and switch to a new branch
git checkout -b feature/add-login

# Discard local changes in one file
git checkout -- README.md
```

## When to use it

- To switch from one branch to another.
- To create and immediately move to a feature branch.
- To restore a file to the last committed version.

## Good to know

- If you have uncommitted changes that conflict with the target branch, Git may block checkout until you commit, stash, or discard changes.
- In newer Git versions, `git switch` and `git restore` split checkout behavior into clearer commands, but `git checkout` is still very common.
