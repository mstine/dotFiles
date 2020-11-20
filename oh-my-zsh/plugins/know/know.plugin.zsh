function know() {
    if [ "$1" != "" ]
    then
	emacs "~/know/$1.org"
    else
	ls ~/know
    fi
}

function knowgrep() {
    if [ "$1" != "" ]
    then
	grep -i $1 ~/know/*.org
    fi
}

alias k=know
alias kg=knowgrep
