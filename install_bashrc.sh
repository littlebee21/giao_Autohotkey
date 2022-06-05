#vagrant shell

set -e

echo "

alias tr='tree'
alias hisf='$(fc -l -n|fzf)'
alias lf=' du -h --max-depth=1 ./'
alias lsg='ls|grep'


function cf(){
	#vim "$(locate -i -e $1 |fzf --preview 'cat {}')"
	cd "$(fdfind -t d $1 |fzf --preview 'cat {}')"
}
function mf(){
	cd "$(fdfind -t d $1 |fzf --preview 'cat {}')"
	make
	cd -
}
function f(){
	#vim "$(fzf)"
	vim "$(fdfind $1 |fzf --preview 'cat {}')"
} " >> ~/.bashrc


source ~/.bashrc
echo "source success"

