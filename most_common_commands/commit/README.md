# Git Commit

`git commit` records staged changes as a snapshot in your local repository history.

## What it does

Git stores commits as checkpoints. A commit includes:

- The staged file changes.
- Commit metadata (author, date, message).
- A reference to its parent commit.

## Basic syntax

```bash
git commit -m "Your message"
```

## Common examples

```bash
# Commit currently staged changes
git commit -m "Add employee ID formatting rules"

# Stage tracked file changes and commit in one command
git commit -am "Update transform documentation"
```

## When to use it

- After staging a single logical change.
- Frequently, so your history stays clear and easy to review.

## Good to know

- `git commit` only includes staged changes.
- Clear commit messages make reviews and troubleshooting much easier.