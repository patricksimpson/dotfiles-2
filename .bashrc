export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH

export NODE_PATH="/usr/local/lib/node_modules"

alias ctags="`brew --prefix`/bin/ctags"
alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"
alias ebash="vim ~/dotfiles/.bashrc"
alias evim="vim ~/dotfiles/.vimrc"
alias v="vim"
alias cpath="pwd | pbcopy"
alias cproj="cd ~/projects"
alias cdot="cd ~/dotfiles"
alias xx="exit"

############################
# tmuxinator
############################
export EDITOR='vim' 

#Git-Svn is sad about perl moving in xcode
export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level"

############################
# Git
############################
alias g="git"
alias gc="git commit"
alias gap="git add -p"
alias gco="git checkout"
alias gs="git status"
alias gp="git push"
alias gup="git-up"
alias gmv="git mv"
alias grb="git rebase -i"
alias gcp="git cherry-pick"
alias gcl="git clone"

############################
# Conveniences
############################

function mcd() {
  mkdir $1
  cd $1
}

function cdl() { 
  cd $1
  ls
}


function wreck() {
  pushd .

  WRECKDIR=`mktemp -d /tmp/wreckXXXXXXXXX` && { 
    cd $WRECKDIR
  }
}

export PATH=/usr/local/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
