export PATH="/opt/ansible/bin:$PATH"
#enables colorin the terminal bash shell export
export CLICOLOR=1

#sets up thecolor scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
#enables colorfor iTerm
export TERM=xterm-color
export LANG=en_US.UTF-8

export HISTSIZE=2000
#Customer Commands
alias l.="ls -a|grep '^\.'"
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cri='cat ~/myscipts/remoteInfo.conf'
alias flushdns='sudo dscacheutil -flushcache'
alias blj='~/myscipts/auto-ssh-blj.expect'
alias 182='~/myscipts/auto-ssh-182.expect'

function ko()
{
    ps -ef|grep $1|awk '{print $2}'|xargs kill -9  #kill the specific processes
}

#自动登录其他服务器，密钥形式
function pssh()
{
    ~/myscipts/pssh.sh $1
}

function mscp()
{
    #$1=remoteId  $2=source $3=destination
    ~/myscipts/mscp.sh $1 $2 $3 $4
}


