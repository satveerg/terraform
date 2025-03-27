#!/bin/bash

while read oldrev newrev refname; do
    branch=$(echo "$refname" | sed 's|refs/heads/||')
    
    # Block branch names starting with "prod"
    if [[ "$branch" =~ ^prod.*$ ]]; then
        echo "ERROR: Creating branches starting with 'prod' is not allowed!"
        exit 1
    fi
done

exit 0
