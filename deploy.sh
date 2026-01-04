#! /bin/bash

# _site is gitignored in both branchs and persists between checkouts
# So we can simply copy it's contents upwards overwriting anything
set -e
echo -e "Generating site...\n"
npm install
echo -e "Running git status, you should only run this script if everything is committed...\n"
git status
echo -e "\n"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo -e "\nCheckout Deploy Branch...\n"
git checkout deploy
echo -e "Removing old files...\n"
shopt -s extglob
rm -rfv !(_site|.git|.gitignore)
echo -e "\nCopying new files...\n"
cp -Rv _site/* .
echo -e "\nCommiting...\n"
git add -A
git commit -m "Update deployment"
git push
git checkout main
echo -e "\nDeployed!"
