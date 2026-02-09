# Version Control using Git

This folder contains screenshots demonstrating basic version control using Git commands.

## Steps Performed

1. Created a new folder for the assignment:
   - Used `mkdir git-assignment`
   - Entered the folder using `cd git-assignment`

2. Initialized Git repository:
   - Command used: `git init`
   - This created an empty Git repository.

3. Created a file and added Version 1:
   - Used: `echo "This is version 1" > notes.txt`
   - Checked content using: `cat notes.txt`
   - Added file to staging: `git add notes.txt`
   - Committed changes: `git commit -m "Version 1"`

4. Added Version 2:
   - Used: `echo "This is version 2" >> notes.txt`
   - Checked file content using `cat notes.txt`
   - Added and committed changes with message "Version 2"

5. Added Version 3:
   - Used: `echo "This is version 3" >> notes.txt`
   - Verified content using `cat notes.txt`
   - Added and committed with message "Version 3"

6. Checked commit history:
   - Command used: `git log --oneline`
   - This showed all versions (Version 1, Version 2, Version 3)

7. Switched to an older version:
   - Used: `git checkout <commit-id>`
   - This opened the file in a previous version (detached HEAD state)

8. Returned back to main branch:
   - Used: `git checkout main`
   - File returned to latest version with all changes.

## Outcome

- Learned how Git tracks file versions.
- Understood commits and version history.
- Learned how to move between different versions of a file.
