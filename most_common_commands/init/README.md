# Git Init

`git init` creates a new Git repository in your current directory.

## What it does

It creates a hidden `.git` folder that contains repository metadata, history,
configuration, and references. After initialization, Git can track changes in that folder.

## Basic syntax

```bash
git init
```

## Common examples

```bash
# Initialize Git in the current folder
git init

# Initialize and then connect to a remote
git init
git remote add origin https://github.com/example/project.git
```

## When to use it

- Starting version control in a brand-new local project.
- Converting an existing folder into a Git repository.

## Good to know

- `git init` does not create a remote by itself.
- You can run `git status` immediately after init to confirm repository state.