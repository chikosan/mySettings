# ~/.bashrc: executed by bash(1) for non-login shells.

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias edit='open -e'

alias grep='grep --color=auto -i'

alias filetypes='find . -type f -exec file '{}' \;'

alias history='history | less'
alias hh='history | grep '
alias hhp='history | pygmentize -g'

alias ii='ifconfig -a'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias ll='ls -ghA --color=auto'
alias columns='ls -A -C --color=auto --group-directories-first'
alias columnst='ls -A -C --color=auto --group-directories-first -t'
alias columnss='ls -A -C --color=auto --group-directories-first -S'
alias columnstr='ls -A -C --color=auto --group-directories-first -t -r'
alias columnssr='ls -A -C --color=auto --group-directories-first -S -r'

alias dirfirst='ls -ghA --group-directories-first'
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


#findfile(){ 
#find "$2" -type f -name \"$1\" | grep "$1"
#}

mcd () {
    mkdir -p $1
    cd $1
}

findfilehere(){
   find . -type f -name "$1" | grep "$1"
}

finddir(){
   find "$2" -type d -name "*$1*" | grep "$1"
}

finddirhere(){
   find . -type d -name "*$1*" | grep "$1"
}

alias df='df -Th'
alias du='du -ach | sort -h'
alias psps='ps aux | grep '
alias instal='apt-get install'
alias remove='apt-get remove'
alias kil9='killall -9'
alias kilcode='killall -9 xcode'
alias kil='killall'

alias gshrc='open -e ~/.bash_profile'
alias shrc='. ~/.bash_profile'
alias ccat='pygmentize -g'


mm() {
   man $1 | grep  $2 -i
} 

#Make search in all man pages - /usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man


## All of our servers eth1 is connected to the Internets via vlan / router etc  ##
alias dnstop='dnstop -l 5 wlan0'
#alias vnstat='vnstat -i wlan0'
alias iftop='iftop -i wlan0'
alias tcpdump='tcpdump -i wlan0'
alias ethtool='ethtool wlan0'

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


#check most used commands 
#history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10


