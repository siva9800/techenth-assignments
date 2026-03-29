# Git Assignment – Version Control

Forked a public repository and cloned it locally.

git clone https://github.com/your-username/repository-name.git  
cd repository-name

Created assignment.txt and committed version 1.

touch assignment.txt  
git add assignment.txt  
git commit -m "Version 1 added"

Created feature branch, updated version 2, and committed.

git checkout -b feat/test  
git add assignment.txt  
git commit -m "Version 2 added"

Checked commit history.

git log --oneline

Merged feature branch into main and pushed changes.

git checkout main  
git merge feat/test  
git commit -m "Merged feat/test into main"  
git push origin main
