source ~/git/dotfiles/antigen/antigen.zsh 

antigen use oh-my-zsh
antigen bundle pip
antigen bundle djui/alias-tips
# This might get dropped. It can get a little verbose. 
antigen bundle dbkaplun/smart-cd

antigen bundle <<EOBUNDLES
    command-not-found
    heroku
    aws
    brew
    colored-man-pages
    common-aliases
    docker
    emoji
    github
    git
    gitignore
    gradle
    last-working-dir
    sublime
    thefuck
EOBUNDLES

antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme agnoster

antigen apply

source ~/.zsh-profile 
