#! /bin/bash

# _site is gitignored in both branchs and persists between checkouts
# So we can simply copy it's contents upwards overwriting anything
set -e
shopt -s extglob
echo "Running git status, you should only run this script if everything is committed..."
git status
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
git checkout deploy
rm -rf !\(_site|.git|.gitignore)
cp -R _site/* .
git commit -m "Update deployment"
git checkout main
echo "Deployed to branch"

