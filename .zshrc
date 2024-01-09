export ZSH="$HOME/.oh-my-zsh"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

source $ZSH/oh-my-zsh.sh
source $ZSH/antigen.zsh
source $ZSH/dracula-syntax.zsh

antigen init ~/.config/antigen/antigenrc

export PATH="/home/ziyadedher/.local/bin:$PATH"
export GPG_TTY=$(tty)
export EDITOR=nvim

export BEMENU_OPTS="-i -l 50\
 --counter always\
 --scrollbar always\
 --prefix run\
 --tb '#6272a4'\
 --tf '#f8f8f2'\
 --fb '#282a36'\
 --ff '#f8f8f2'\
 --nb '#282a36'\
 --nf '#6272a4'\
 --ab '#282a36'\
 --af '#6272a4'\
 --hb '#44475a'\
 --hf '#50fa7b'\
 --sb '#44475a'\
 --sf '#50fa7b'\
 --scb '#282a36'\
 --scf '#ff79c6'"

[ -z "$TMUX" ] && [[ "$(tty)" =~ ^/dev/pts/[0-9]*$ ]] && { echo "Starting tmux..." && exec tmux new-session && exit; }
echo
neofetch
todo --use-cache summary
echo
