export QT_STYLE_OVERRIDE=kvantum
## Directories
export LS_COLORS='rs=0:di=00;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.swp=00;90:*.tmp=00;90:*.dpkg-dist=00;90:*.dpkg-old=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:'

## Starship
starship init fish | source
export STARSHIP_CONFIG=/home/ark/.config/starship/starship.toml

## Changes default sudoedit editor from nano to nvim ( using usr[ark] config )
set -gx EDITOR nvim

## Python with venv
#source ~/.venv/bin/activate.fish

## Bun
#set --export BUN_INSTALL "$HOME/.bun"
#set --export PATH $BUN_INSTALL/bin $PATH

## Nvm
#export NVM_DIR="$HOME/.nvm"
#bass '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm'

## QT scale increased
export QT_SCALE_FACTOR=2.0
#export PATH=/usr/bin:/bin:/sbin/:/usr/sbin:/usr/local/bin:/usr/local/sbin/

## General
alias c='clear -T xterm'
alias g=exit
alias gg=exit
#alias ls='lsd --classify'
alias ls='lsd'
alias cp='cp -i'
alias mv='mv -i'
alias ds='disown'
alias copy='xclip -selection clipboard'
alias reverse='tac'
alias exe='chmod 777'
alias refresh='exec fish'

alias gc='git clone'

## System power stuff
alias reboot='systemctl reboot'
alias logout='sudo pkill -KILL -u ark'
alias shutdown='shutdown now'
alias hibernate='sudo s2disk'

## Misc
alias dock-stop='sudo systemctl disable docker && sudo systemctl disable containerd.service && sudo systemctl disable docker.socket'
# alias connect="nmcli dev wifi con 'init' password 'YOURPASSWORD'"  # Removed for security - add to ~/.config/fish/secrets.fish
alias icat="kitty +kitten icat"
alias tsu='sudo fish'

## Dirs
alias dots='cd ~/dev/dots/'
#alias todo='nvim /home/ark/toDo.txt'
alias trash='cd /home/ark/.local/share/Trash/rand/'
alias view='viewnior'

## vim
alias v=nvim
alias vim=nvim
alias vi=nvim
alias lv=lvim

## apps
alias pdf='zathura'
alias zath='zathura'
alias speedtest='speedtest --no-upload --bytes --secure --single'
alias dock="docker"
alias cal=calcurse
alias calendar=calcurse
alias firefox='/opt/firefox/firefox'
alias ff='firefox'
alias firefox-dev='firefox'
alias todo='task'
alias tui='taskwarrior-tui'
alias xampp='/opt/lampp/xampp'
alias logisim='wmname compiz; java -jar /home/ark/.bin/logisim-evolution-3.9.0-all.jar'

## utility aliases
alias randpasswd='tr -dc "a-zA-Z0-9_#@.-" < /dev/urandom | head -c 30'

#filter bloat when running this for finding key names
#xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'

fish_add_path /home/ark/.spicetify
#set -x ANDROID_HOME ~/Android/Sdk
#set -x PATH $PATH $ANDROID_HOME/cmdline-tools/latest/bin $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools
