# Path to your oh-my-zsh installation.
  export ZSH=/root/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#  DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
  DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
  ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias zshrc='. ~/.zshrc'
alias shrc='. ~/.zshrc'
alias vimrc='gvim ~/.vimrc'

alias grep='grep --color=auto -i'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias history='history | less'
alias hh='history | grep '
alias hhp='history | pygmentize -g'

alias df='df -Th'
alias kil9='killall -9'
alias kk='killall -9 '
alias pp='ps -aux | grep '
alias psps='ps aux | grep '

alias uu='apt-get update && apt-get dist-upgrade'

alias du='du -ach | sort -h'

alias instal='apt-get install'
alias instals='apt-get -s install'
alias removes='apt-get -s remove'

alias kilfox='killall -9 x-www-browser'
alias kilpl='killall -9 gnome-mplayer'

alias kil='killall'
alias gamma='xgamma -gamma'

alias ccat='pygmentize -g'

pid() {
ps -C $1 -o pid=
}

timer() {
mytime="$(time ( $1 ) 2>&1 1>/dev/null )"
echo "$mytime"
}

alias ll='ls -ghA --color=auto'
alias lll='ls -A | less'
alias lcol='ls -ghA --group-directories-first| less'
alias dirfirst='ls -ghA --group-directories-first'

straceproc() {
strace -t -p pid $1 -o $1.txt
}
 
gdbproc() {
pidForGdb="pid $1"
gdb --pid=pidForGdb
}

mm() {
   man $1 | grep  $2 -i -n
} 

mm5() {
   man $1 | grep  $2 -i -A 5 -B 5 | sed -e "s/[[:space:]]\+/ /g"
}

mm20() {
   man $1 | grep  $2 -i -A20 -B 20 | sed -e "s/[[:space:]]\+/ /g"
}

mh() {
   $1 --help | grep  $2 -i -n 
} 

mh5() {
   $1 --help | grep  $2 -i -A 5 -B 5 | sed -e "s/[[:space:]]\+/ /g"
}

mh20() {
   $1 --help | grep  $2 -i -A20 -B 20 | sed -e "s/[[:space:]]\+/ /g"
}

bright() { 
echo $1 > /sys/class/backlight/acpi_video0/brightness
}

alias whichsh='ps -o args= -p $$'

sedNewlines(){
#read the whole file in a loop, then replaces the newline(s) with a space.

sed ':a;N;$!ba;s/\n/ /g' $1

#:a create a label 'a'
#N append the next line to the pattern space
#$! if not the last line, ba branch (go to) label 'a'
#s substitute, /\n/ regex for new line, / / by a space, /g global match (as many times as it can)

#sed will loop through step 1 to 3 until it reach the last line, getting all lines fit in the pattern space where sed will substitute all \n characters
}

trNewlines(){
tr '\n' ' ' < $1
}

trNewlinesAll(){
#remove the newline characters entirely:
tr --delete '\n' < $1 > $2
}

mcd () {
    mkdir -p $1
    cd $1
}

alias filetypes='find . -type f -exec file '{}' \;'

alias columns='ls -A -C --color=auto --group-directories-first'
alias columnst='ls -A -C --color=auto --group-directories-first -t'
alias columnss='ls -A -C --color=auto --group-directories-first -S'
alias columnstr='ls -A -C --color=auto --group-directories-first -t -r'
alias columnssr='ls -A -C --color=auto --group-directories-first -S -r'

alias lssize='ls -ghA --group-directories-first --color=auto -C -S'
alias lssizer='ls -ghA --group-directories-first --color=auto -C -S -R'
alias lstime='ls -ghA --color=auto -C -t'
alias lstimer='ls -ghA --color=auto -C -t -R'

alias lsdir='ls -d */ '
alias lsdirt='ls -d */ -t'
alias lsdirtr='ls -d */ -t -r'

alias lsless='ls -ghFA | less'
alias lslesst='ls -ghFA -t | less'
alias lslesstr='ls -ghFA -t -r | less'
alias lslesss='ls -ghFA -S | less'
alias lslesssr='ls -ghFA -S -r | less'
alias lslessd='ls -ghFA --group-directories-first | less' 

alias row='ls -mA --group-directories-first --color=auto'
alias rowt='ls -mA --group-directories-first --color=auto -t'
alias rowtr='ls -mA --group-directories-first --color=auto -t -r'
alias rows='ls -mA --group-directories-first --color=auto -S'
alias rowsr='ls -mA --group-directories-first --color=auto -S -r'

alias findhere='ls -mA --group-directories-first | grep'
alias findheres='ls -mA -S --group-directories-first | grep'
alias findheret='ls -mA -t --group-directories-first | grep'

alias findsub='ls -R -mA | grep'
alias findsubs='ls -R -mA -S --group-directories-first | grep'
alias findsubt='ls -R -mA -t --group-directories-first | grep'

alias trash-show='ls -sha --color=auto ~/.local/share/Trash/'
alias trash-empty='rm -rf ~/.local/share/Trash/*'
alias tr='trash-empty'

alias ged='gedit'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

gitCommit() {
   git commit -m $1 
}

gitPushTo() {
   git remote add origin $1 && git push -u origin master
}

GTK_MODULES=""

#deleteword(){ 
#sed -i ".bak" '/$1/d' 
#}

#To remove the line and print the output to standard out:
#sed '/pattern to match/d' ./infile

#To directly modify the file (with GNU sed):
#sed -i '/pattern to match/d' ./infile

#alias 2columns='ls -lhA --color=auto -C'

#alias blah='function _blah(){ echo "First: $1"; echo "Second: $2"; };_blah'

ffhere(){
   find . -name "$1" | grep "$1"
}

#findfile(){ 
#find "$2" -type f -name \"$1\" | grep "$1"
#}

findfilehere(){
   find . -type f -name "$1" | grep "$1"
}

finddir(){
   find "$2" -type d -name "*$1*" | grep "$1"
}

finddirhere(){
   find . -type d -name "*$1*" | grep "$1"
}

alias ii='ifconfig -a'

#Make search in all man pages - /usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man

sstart() { 
service $1 start
}

sstop() { 
service $1 stop
}

alias startcapitan='vmrun start /root/vmware/Clone\ of\ OS\ X\ El\ Capitan/Clone\ of\ OS\ X\ El\ Capitan.vmx'
alias fixvm='modprobe vmmon && modprobe vmw_vmci && modprobe vmnet && vmware-networks --start'

# shortcut  for iptables and pass it via sudo#
#alias ipt='sudo /sbin/iptables'
 
# display all rules #
#alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
#alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
#alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
#alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
#alias firewall=iptlist

baran(){
sed -i "1i127.0.0.1 $1" /etc/hosts && service network-manager restart
}

alias dnstop='dnstop -l 5 wlan0'
#alias vnstat='vnstat -i wlan0'
alias iftop='iftop -i wlan0'
alias tcpdump='tcpdump -i wlan0'
alias ethtool='ethtool wlan0'

#alias nn='netstat -tulanp'

#echo "127.0.0.1 $1" >> /etc/hosts

## pass options to free ## 
#alias meminfo='free -m -l -t'
 
## get top process eating memory
#alias psmem='ps auxf | sort -nr -k 4'
alias mem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
#alias pscpu='ps auxf | sort -nr -k 3'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'
 
## get GPU ram on desktop / laptop## 
#alias gpumeminfo='grep  -i --color memory /var/log/Xorg.0.log'

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}

#check most used commands 
#history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
