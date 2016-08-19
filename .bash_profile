PATH=$PATH:$HOME/bin

export PS1='\n[\e[0;32m\]\u\e[0;37m\] : $HOSTNAME] \e[0;37m\]\e[0;33m\]($?)\e[0;37m\] \e[0;32m\]\w\e[0;34m\]\[\e[0;37m\]:\n'

# aliases
alias ..='cd ..'
alias ...='cd ../..'

alias v='vim'
alias l='ls -AlFho --color=always'
alias untgz="tar -zxvf"

alias jup='jupyter notebook'
alias notebook="nohup jupyter notebook --no-browser --ip=0.0.0.0 &"

alias db="mysql -u root --password=password"

alias pyserve='python -m SimpleHTTPServer'

function pyprof {
    python -m cProfile -o $1cprof $1py && pyprof2calltree -k -i $1cprof
}

# History length
HISTFILESIZE=10000
HISTSIZE=""
HISTTIMEFORMAT="%d/%m/%y %T |   "
HISTFILE=/vagrant/.bash_history

cd /vagrant
