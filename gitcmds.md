*Helpful Git Command Lines*

Set config to not show untracked files for a git status by default
* git config --global --add status.showUntrackedFiles 'no'

Switch to master, get latest version of everything locally
* git checkout master
* git pull

Create new branch and setup remote tracking
* git checkout -b branch base_branch

Do work, commit it locally
* git commit

Push changes to remote server and add remote tracking
* git push -u origin <branch>

Do more work, commit it locally
* git commit

Push changes to remote server (you only need "-u" the first time)
* git push

Switch to master, get latest version of everything locally
* git checkout master
* git pull

Switch back to feature branch, merge master into branch, and push changes to repo
* git checkout <branch>
* git push

Switch back to master, merge feature branch back to main
* git checkout master
* git merge <branch>

Archiving a branch
* git checkout <branch>
* git tag archive/<branch>

Deleting a branch
* git branch -d <branch> - deletes it locally
* git push origin --delete <branch> - deletes the remote copy

