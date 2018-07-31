## How to stop Git from tracking files listed  in gitignore

If you add the gitignore file to Project Root Directory after Git tracking files for some time, Git will ignore the files specified in the gitignore file.

You will have to remove the cached data for gitignore to work properly.

Untrack a single file that has already been added/initialized to your repository, i.e., stop tracking the file but not delete it from your system use: **git rm --cached filename**

To untrack every file that is now in your .gitignore:

First commit any outstanding code changes, and then, run this command:
```
git rm -r --cached .
This removes any changed files from the index(staging area), then just run:

git add .
Commit it:

git commit -m ".gitignore is now working"
To undo git rm --cached filename, use git add filename.
```
Make sure to commit all your important changes before running git add . Otherwise, you will lose any changes to other files.
