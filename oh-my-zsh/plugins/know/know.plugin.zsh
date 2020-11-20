function know() {
    if [ "$1" != "" ]
    then
	emacs "~/know/$1.org"
    else
	ls ~/know
    fi
}

	
