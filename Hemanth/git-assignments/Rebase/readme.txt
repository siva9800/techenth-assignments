created a new repo in github and cloned it into the local.
created 2 files in main branch notes1, notes2.
add the created files for tracking
commited changes as notes1a, notes2b.
Add new feature branch (feat/rebase)
created two files notes3 and then added for tracking and committed as notes3c.
now again created one file in main branch notes4.
added for tracking and committed it as notes4d.
Now main branch commit flow is notes1a, notes2b, notes4d.
but the feat/rebase branch flow is notes1a, notes2b,notes3c.
next, checkout to the feat/rebase branch,
apply "git rebase main".
the changes will be as follows.
notes1a, notes2b, notes4d, notes3c.
