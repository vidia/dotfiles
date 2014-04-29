#!/bin/bash
PROMPT_COMMAND=_prompt_command

function _prompt_command() {
PS1="\[\e[0;36m\]\u\[\e[00m\]@\[\e[0;32m\]`shorthostname`\[\e[00m\]::\[\e[0;34m\]\W \[\e[0;35m\]\!\[\e[00m\]$(gitify)\[\e[00m\] \$ "
}

function gitify {
    status=$(git status 2>/dev/null | tail -n 1)
    if [[ $status == "" ]]
    then
        echo ""
    else
        echo " \e[1;33m\]$(git-branch-name)$(git-dirty)$(git-unpushed)"
    fi
}

function git-unpushed {
    brinfo=$(git branch -v | grep git-branch-name)
    if [[ $brinfo =~ ("[ahead "([[:digit:]]*)]) ]]
    then
        echo "(${BASH_REMATCH[2]})"
    fi
}

function git-dirty {
	status=$(git status 2>/dev/null)
    end=$(echo "$status" | tail -n 1)
	merge=$(echo "$status" | grep "You have unmerged paths")
    if [[ $end != "nothing to commit, working directory clean" ]]
    then
		if [[ $merge != "" ]]
		then
			printf "|MERGING"
		else 
			printf "*"
		fi
	fi
}

function git-branch-name
{
    echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}


















