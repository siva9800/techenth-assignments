1.Created a repo and clone the repo to local.
2.Created notes1.txt file with line this is feature1
3.Git add , git commit , git push.
4.created notes2.txt file with line this I feature2
5.Git add , git commit , git push.
6.Now create another branch with future from main branch
7.Created Notes3.txt file with line this is feature3
8.Git add , git commit , git push.
In the meantime someone pushed the changes to main branch.
9. git rebase main. (getting the changes from main branch to future branch)
10. git push --force-with -lease origin branchName

Now modified the notes1 with this is feature1 edited.

after that modify the same line in main branch. and try to raise PR .Now this will show merge conflict. 

To resolve this : Manually check  and resolve the conflicts the commit and push the changes.
