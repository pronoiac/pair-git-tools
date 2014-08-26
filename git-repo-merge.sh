#!/bin/bash 

read -r -d '' USAGE <<'EOF'

  Usage: git-repo-merge.sh "SOURCE" "PREFIX"

Merges two git repos. 
Run this from the destination git repo. 
The source can be: 
e.g. 
https://github.com/pronoiac/pair-git-tools.git
git@github.com:pronoiac/pair-git-tools.git
~/projects/appacademy/w2d2

This rewrites the git history! Do backups first.  

EOF

if [ $# -ne 2 ] &&  [ -z "$MY_NAME" ] 
then 
	echo "$USAGE"
	exit 1
fi

export SRC=$1
export PREFIX=$2

git subtree add --prefix="$PREFIX" "$SRC" master

# time git subtree add --prefix=w2d2 ~/Dropbox/projects/appacademy/w2d2/ master
