# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment and startup programs
export JAVA_HOME=/usr/java/jdk1.8.0_191-amd64
export JRE_HOME=/usr/java/jdk1.8.0_191-amd64/jre
