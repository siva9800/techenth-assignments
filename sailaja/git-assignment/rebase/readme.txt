
created new repo in github and cloned repo to the local. 
created 2 files in main branch rebase1, rebase2.
we have add the created files for tracking
commited changes.
Add new feature branch (feat/tech)
created two files rebase3, rebase4 and then added for tracking and committed.
now again created one file in main branch rebase5.
added for tracking and committed it.
Now main branch commit flow is rebase1, rebase2, rebase5.
but the feat/tech branch flow is rebase1, rebase2, rebase3, rebase4.
next, checkout to the feat/tech branch, 
apply "git rebase main".
the changes will be as follows.
rebase1, rebase2, rebase5,rebase3,rebase4.
