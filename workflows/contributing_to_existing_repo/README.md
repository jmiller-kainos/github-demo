# Beginner Workflow: Contributing to an Existing Repository

This guide shows the Git commands in the order you would typically run them when contributing to a repository that already exists on GitHub.

## Goal

You want to:

- Clone an existing repository.
- Create a branch for your work.
- Make and save your changes.
- Push your branch to GitHub.
- Open a pull request.

## Command order in practice

```bash
# 1. Clone the existing repository (replace with your URL)
git clone https://github.com/your-org/your-repo.git

# 2. Move into the project folder
cd your-repo

# 3. Check status on your current branch
git status

# 4. Pull latest changes from main before starting
git checkout main
git pull origin main

# 5. Create and switch to a new feature branch
git checkout -b feature/describe-change

# 6. Make your code changes, then stage them
git add .

# 7. Commit your changes
git commit -m "Describe your change"

# 8. Push your branch and set upstream
git push -u origin feature/describe-change
```

## What each step is doing

- `git clone ...`: Downloads a full copy of the remote repository to your machine.
- `cd your-repo`: Moves into the cloned project folder.
- `git status`: Shows changed, staged, and untracked files.
- `git checkout main`: Switches to the `main` branch.
- `git pull origin main`: Updates your local `main` branch with the latest remote changes.
- `git checkout -b feature/describe-change`: Creates a new branch and switches to it.
- `git add .`: Stages current file changes.
- `git commit -m "Describe your change"`: Saves a snapshot of staged files.
- `git push -u origin feature/describe-change`: Uploads your branch and remembers its remote tracking branch.

## After you push your branch

1. Go to the repository on GitHub.
2. Open a pull request from `feature/describe-change` into `main`.
3. Request review if your team uses code reviews.
4. Merge when approved.

## Day-to-day contribution loop

For each update to your branch, you usually repeat:

```bash
git status
git add .
git commit -m "Describe your update"
git push
```

## Beginner tips

- Start new work from an up-to-date `main` branch.
- Use clear branch names such as `feature/add-login-page` or `fix/button-alignment`.
- Keep commits small and focused.
- If `main` changes while you are working, update your branch before opening a pull request.
