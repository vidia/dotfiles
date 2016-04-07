source ~/git/dotfiles/antigen/antigen.zsh 

antigen use oh-my-zsh
antigen bundle pip
antigen bundle djui/alias-tips
# This might get dropped. It can get a little verbose.
# antigen bundle dbkaplun/smart-cd
antigen bundle command-not-found
antigen bundle heroku
antigen bundle aws
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle common-aliases
antigen bundle docker
antigen bundle emoji
antigen bundle github
antigen bundle git
antigen bundle gitignore
antigen bundle gradle
antigen bundle last-working-dir
antigen bundle sublime
antigen bundle thefuck
antigen bundle autojump
#antigen bundle tmux
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme agnoster

antigen apply

DEFAULT_USER=david@Davids-MacBook-Pro
source ~/.zsh-profile
