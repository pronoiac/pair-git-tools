#!/bin/bash 

#export MY_NAME="James Young"
#export MY_EMAIL="pronoiac@gmail.com"

read -r -d '' USAGE <<'EOF'

  Usage: git-author-replace.sh "NAME" "EMAIL ADDRESS"

This rewrites the git history, replacing contributors with
the given name and email address. 

EOF

if [ $# -ne 2 ] &&  [ -z "$MY_NAME" ] 
then 
	echo "$USAGE"
	exit 1
fi

MY_NAME=${1-$MY_NAME}
MY_EMAIL=${2-$MY_EMAIL}
	
git filter-branch --env-filter "
	export GIT_AUTHOR_NAME='$MY_NAME';
    export GIT_AUTHOR_EMAIL='$MY_EMAIL';
    export GIT_COMMITTER_NAME='$MY_NAME';
    export GIT_COMMITTER_EMAIL='$MY_EMAIL'" HEAD
