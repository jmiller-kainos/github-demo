# Best Practices

These guidelines help keep our version control clean, consistent, and easy to work with.

## Making Changes to a Repository

When making changes to a repository, keep the following in mind:

- Each commit should represent a single, clearly defined change.
- The commit message should accurately describe that change.

### Example

You are updating a document transformation based on vendor feedback:
- Employee names must be truncated to a maximum of 10 characters  
- Leading zeroes must be removed from employee IDs  

It may be tempting to fix both issues and push them in a single commit. However, in a shared repository, it’s best practice to commit each change separately.

### Why this matters

- Minimizes merge conflicts between contributors  
- Makes changes easier to review and understand  
- Keeps commit history clear and traceable  

If a commit includes multiple changes but only describes one, or there are too many changes to easily follow along with, it can create confusion for anyone reviewing the history later.
