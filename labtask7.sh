# 1. Initialize a new Git repository and make first commit
git init
echo "Initial project setup" > README.md
git add README.md
git commit -m "Initial commit"

# 2. Create and switch to a new Git branch
git checkout -b feature-branch

# 3. Merge a branch into the current one
git checkout main
git merge feature-branch

# 4. Create a new CVS repository (in ~/cvsrepo) and import a project
mkdir -p ~/cvsrepo
cvs -d ~/cvsrepo init
cd myproject
cvs -d ~/cvsrepo import -m "Initial import" myproject start v1_0

# 5. Check out the CVS project and create a branch
cvs -d ~/cvsrepo checkout -d myproject_branch -r start myproject
cd myproject_branch
cvs tag -b BRANCH_1
