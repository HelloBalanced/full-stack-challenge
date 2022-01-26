#!/bin/bash 
bundle_file_name='balance-full-stack-challenge'
author=$(git config --get user.email)
commits=$(git log --author=$author)
len_commits=${#commits}

if [ $len_commits -eq 0 ]; then 
    echo "error"
    exit
else
    git bundle create balance-full-stack-challenge.bundle HEAD main
    echo 'Nice work, you created balance-full-stack-challenge.bundle.'
    echo 'Please upload it using the link sent to you in the initial email.'
fi