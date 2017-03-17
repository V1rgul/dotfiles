
alias tree="tree -C"
alias t="tree -L 3 --filelimit=10"
alias diff="colordiff"
alias k="k -h"

alias cpr="rsync -avz --progress -h"
alias mvr="rsync -avz --progress -h --remove-source-files"

alias duh="du -h -d 1 | sort -hr" 

alias psg="ps -aux | grep"

f(){
	gnome-terminal --working-directory=$PWD
}

git_d(){
	git --no-pager diff --color $* | diff-so-fancy | less --tabs=4 -R
}

source /home/v1rgul/Github/hhighlighter/h.sh

export NVM_DIR="/home/v1rgul/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


echo -n "Loaded: "
if [ -e "/opt/ros/jade/setup.zsh" ]; then
	. /opt/ros/jade/setup.zsh
	echo -n "ROS, "
fi

# if [ -d "/opt/anaconda2/bin" ]; then
# 	# added by Anaconda2 4.0.0 installer
# 	export PATH="$PATH:/opt/anaconda2/bin"
# 	echo "Anaconda, "
# fi

echo ""


# export PACPUS_ROOT=/opt/pacpus/0.2.2
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PACPUS_ROOT/bin
# alias PacpusSensor="${PACPUS_ROOT}/bin/PacpusSensor"
# alias DBITEPlayer="${PACPUS_ROOT}/bin/DBITEPlayer"

Autopilot=~/Github/Autopilot
AutopilotROS=~Autopilot/ROS/workspace
RosLog=~/.ros/log/latest
: ~Autopilot ~AutopilotROS ~RosLog


allcolors() {
	# for x in 0 1 4 5 7 8; do
	# 	for i in {30..37}; do
	# 		for a in {40..47}; do
	# 			echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0:37;40m ";
	# 		done;
	# 		echo;
	# 	done;
	# done


	T=${1:-"Test"} #assign T to : $1 if $1 exists, "Test" if not


	echo -e "\n                 40m     41m     42m     43m\
	     44m     45m     46m     47m";

	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
	           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
	           '  36m' '1;36m' '  37m' '1;37m';
	  do FG=${FGs// /}
	  echo -en " $FGs \033[$FG  $T  "
	  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
	    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
	  done
	  echo;
	done
	echo
}

allgradients() {
	for code in {000..255}; do print -P -- "$code: %F{$code} Test %K{$code} Test %f Test %k"; done
}

testsbpcolors() {
	for code in 31 196 15 244 238 250 148 0; do
		print -P -- "$code: %F{$code} Test %K{$code} Test %f Test %k";
	done
}


