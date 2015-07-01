export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
#enables colorin the terminal bash shell export
export CLICOLOR=1

#sets up thecolor scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
#enables colorfor iTerm
export TERM=xterm-color

#Customer Commands
alias l.="ls -a|grep '^\.'"

function ko()
{
    ps -ef|grep $1|awk '{print $2}'|xargs kill -9  #kill the specific processes
}
