# Alias
alias framework-startproject='git clone http://github.com/guilouro/boilerplate-lothus-php.git . &&
git clone http://github.com/guilouro/Lothus-PHP.git FRAMEWORK/ && \
rm -rf .git && \
rm -rf README.md && \
rm -rf FRAMEWORK/.git && \
rm -rf FRAMEWORK/.gitignore && \
git init && \
git add . && \
git status && \
git commit -m "Init"'
alias myip='curl -s ip.dnsexit.com'

#-- Navegation
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"
alias home='cd ~'
alias dev='cd ~/dev/projects'


#-- System
alias ll='ls -la'
alias ld='ll | grep "^d"' ## List only directories
alias lh='ls -lah' ## size files
alias cl='clear'
alias celar='clear'
alias stree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias size='du -h --max-depth=1' ## Size paths
alias srcbash='source ~/.bashrc' ## Reload bash
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;' ## Remove all files .pyc
alias deb='sudo dpkg -i '

#-- Django
alias manage='python `cat $VIRTUAL_ENV/.project`/manage.py'
alias mrs='manage runserver'
alias mk='manage makemigrations'
alias mm='manage migrate'
alias msync='manage syncdb'
alias mt='manage test'
alias start-template='django-admin.py startproject --template https://github.com/guilouro/django-boilerplate/archive/master.zip' # Name # Local

# installs
alias git-gen-serv='git clone https://github.com/guilouro/git-gen-serv.git . && sh install'

#-- Geral
alias server='python -m SimpleHTTPServer'
alias docker-rm-none-image='docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")'

#-- Clones
alias cl-grunt='git clone https://github.com/guilouro/grunt-workflow.git .'
alias cl-gulp='git clone https://github.com/guilouro/gulp-boilerplate.git .'

#-- Personal
alias ssh-netfla-aws='ssh -i "~/Documents/netfla/netfla.pem" ubuntu@ec2-3-16-29-134.us-east-2.compute.amazonaws.com'

# VirtualenvWrapper
if [ -e "/usr/local/bin/virtualenvwrapper.sh" ]; then
	export WORKON_HOME=~/.virtualenvs
	export PROJECT_HOME=~/dev/projects/python
	export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=''
	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
	export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
	source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Autocomplete for git
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/git-auto-complete.bash
if [ -f ~/git-auto-complete.bash ]; then
  . ~/git-auto-complete.bash
fi

source ~/.bash_prompt

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/Library/Python/3.9/bin:$PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
