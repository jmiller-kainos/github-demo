# High Level Overview: Git and GitHub Foundations

This guide explains the core concepts you should understand before diving into workflows and commands.

## Goal

By the end of this guide, you should understand:

- The difference between Git and GitHub.
- When to use Git on its own vs when to use GitHub.
- Common terminology used in day-to-day collaboration.
- How local, staging, commit history, and remote all connect.

## Git vs GitHub

- Git is a version control tool that runs locally on your machine.
- GitHub is a cloud platform for hosting Git repositories and collaborating with others.

Think of it this way:

- Git is the engine that tracks changes.
- GitHub is the online collaboration space built around that engine.

## When you would use Git only

You can use only Git when:

- You are working solo on a local project.
- You want local history and rollback without sharing code online.
- You are experimenting or prototyping and do not need remote collaboration yet.

## When you would use Git and GitHub together

You usually use both when:

- You are working with a team.
- You need backup/history hosted remotely.
- You want pull requests, code review, and discussion.
- You need CI/CD integrations and repository settings.

## Basic lingo and core areas

### Working directory

- The files in your project folder that you are actively editing.
- Changes here are not yet staged or committed.

### Staging area (index)

- A preparation area where you choose exactly what goes into the next commit.
- You add files or changes to staging with `git add`.

### Commit (local history)

- A saved snapshot of staged changes in your local Git history.
- Commits are created with `git commit`.

### Local repository

- Your full Git history on your machine, including all local branches and commits.

### Remote repository

- A Git repository hosted elsewhere (for example on GitHub).
- The default remote is commonly named `origin`.

### Push

- Sending your local commits to a remote repository.

### Pull

- Bringing remote commits into your current local branch.
- Usually combines `fetch` and `merge`.

### Branch

- An isolated line of development.
- Useful for new features, bug fixes, and safe experimentation.

### Main branch

- The primary branch (commonly named `main`) that teams merge approved changes into.

## How changes move through the system

1. You edit files in the working directory.
2. You stage selected changes.
3. You commit staged changes to local history.
4. You push commits to the remote repository.
5. Teammates pull those remote changes into their local branches.

## Visual model

```text
Working Directory -> Staging Area -> Local Commits -> Remote (GitHub)
```

## Common beginner misunderstandings

- "I changed a file, so it is committed": False. Changed is not the same as committed.
- "I committed, so my team can see it": Not until you push.
- "GitHub and Git are the same thing": They are related, but different.
- "Everything added with git add must be permanent": You can unstage or amend before sharing.

## Quick self-check

If someone asks where your change is, you should be able to answer:

- Is it only in the working directory?
- Is it staged?
- Is it committed locally?
- Is it pushed to remote?
