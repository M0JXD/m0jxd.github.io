#! /bin/bash

# _site is gitignored in both branchs and persists between checkouts
# So we can simply copy it's contents upwards overwriting anything

GREEN="\e[32m"
ENDCOLOR="\e[0m"

set -e
echo -e "${GREEN}Generating site...${ENDCOLOR}"
rm -r _site
npm install
echo -e "${GREEN}\nRunning git status, you should only run this script if everything is committed...\n${ENDCOLOR}"
git status
echo -e "${GREEN}Continue with deployment? (Y/N): ${ENDCOLOR}"
read confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo -e "${GREEN}\nCheckout Deploy Branch...\n${ENDCOLOR}"
git checkout deploy
echo -e "${GREEN}Removing old files...\n${ENDCOLOR}"
shopt -s extglob
rm -rfv !(_site|.git|.gitignore|node_modules)
echo -e "${GREEN}\nCopying new files...\n${ENDCOLOR}"
cp -Rv _site/* .
echo -e "${GREEN}\nCommiting...\n${ENDCOLOR}"
git add -A
git commit -m "Update deployment `date`"
git push
git checkout main
echo -e "${GREEN}\nDeployed!${ENDCOLOR}"
