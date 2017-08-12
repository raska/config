#--------------------
# fish config
#--------------------

# Java encording by UTF-8
alias javac 'javac -J-Dfile.encoding=UTF-8'
alias java 'java -Dfile.encoding=UTF-8'
set -x _JAVA_OPTIONS "-Djava.net.preferIPv4Stack=true"

# Japanese
alias ls "ls -v"
set -x LANG ja_JP.UTF-8
 
# gnuplot
set -x GNUTERM x11

# color
alias ls "ls -G"

# gcc
#alias gcc "gcc-4.9"

# editor
set -U EDITOR vim

# fzf kye bindings (0:new)
set -U FZF_LEGACY_KEYBINDINGS 0

# PATH --------------------------------------------------------------
# Hombrew
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/local/bin $PATH
# tw
#set -x PATH=/usr/local/lib/ruby/gems/2.0.0/gems/tw-0.5.2/bin:$PATHi
# -------------------------------------------------------------------

