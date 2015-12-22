
alias tree="tree -C"
alias diff="colordiff"

alias cpr="rsync -avz --progress -h"
alias mvr="rsync -avz --progress -h --remove-source-files"

export PACPUS_ROOT=/opt/pacpus/0.2.2
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PACPUS_ROOT/bin
alias PacpusSensor="${PACPUS_ROOT}/bin/PacpusSensor"
alias DBITEPlayer="${PACPUS_ROOT}/bin/DBITEPlayer"

