# Git Clone

`git clone` creates a full local copy of a remote repository.

## What it does

`git clone` downloads all repository history and files, creates a new local folder,
and automatically sets up the default remote named `origin`.

## Basic syntax

```bash
git clone <repository-url>
git clone <repository-url> <folder-name>
```

## Common examples

```bash
# Clone into a folder named after the repository
git clone https://github.com/example/project.git

# Clone into a custom folder name
git clone https://github.com/example/project.git my-local-project
```

## When to use it

- The first time you want to work with an existing remote repository.
- When setting up a fresh local environment.

## Good to know

- Cloning already includes a working copy of the default branch.
- After cloning, run `git branch -a` to see local and remote-tracking branches.