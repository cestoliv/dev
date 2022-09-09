# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# ALIASES
# Remove every local branch that no longer exists on the remote
alias gitclear="git fetch -p && git for-each-ref --format '%(refname:short) %(upstream:track)' | awk '\$2 == \"[gone]\" {print \$1}' | xargs -r git branch -D"
# Usage `indir <command>`, run the command recursively in all subdirectories
indir() {
	for d in */; { echo $d; cd $d; $@; cd ../; echo}
}
alias make="make --no-print-directory"


source $ZSH/oh-my-zsh.sh
