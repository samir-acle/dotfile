EDITOR=atom
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH=$PATH:/Users/SamirMehta/Downloads/ngrok
export PATH=$PATH:/usr/local/sbin
EDITOR=atom

if  [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

if  [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=1 # display the unstaged (*) and staged (+) indicators
  # set your prompt. path: \w, git branch & status: $(__git_ps1), newline: \n, dollar sign delimiter: \$
  PS1='\u@\h: \w$(__git_ps1) \n$ '
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GITHUB_USERNAME='sammehta88'


function webinit(){
  mkdir ${1}
  cd ${1}
  cp ~/index-temp.html ./index.html
  mkdir css js
  touch css/styles.css
  touch js/app.js
  touch README.md
  atom .
}

alias sb='cd ~/wdi/sandbox && l'
alias ex='cd ~/wdi/exercises && l'
alias ud='cd ~/Documents/Udacity && l'
alias projects='cd ~/wdi/projects && l'
alias prog='cd ~/programming && l'
alias respec='rspec --color -f d'
alias startmong='mongod --config /usr/local/etc/mongod.conf'
alias jspec='jasmine-node spec --verbose'
alias gs='git status'
alias gp='git push origin master'
alias sideproj='cd ~/programming/side-projects'

# from RobertAKARobin dotfiles
alias profile='atom ~/.bash_profile'
alias reload='exec bash -l'
alias gitrm='git rm --cached -r '
alias gl='git log --all --decorate --graph --pretty=format:"%C(yellow)%h%Creset %C(auto)%d%Creset %Cblue%ar%Creset %Cred%an%Creset %n%w(72,1,2)%s"'
# alias pyserv='python -m SimpleHTTPServer'
alias desk='cd ~/Desktop && l'

function l(){
  echo ""
  echo "----------"
  ls -AF1
  echo "----------"
  echo ""
}

function pyserv(){
  open http://localhost:8000
  python -m SimpleHTTPServer
}
