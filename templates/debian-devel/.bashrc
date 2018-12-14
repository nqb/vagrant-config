DEBEMAIL="nqb@inverse.ca"
DEBFULLNAME="Nicolas Quiniou-Briand"
export DEBEMAIL DEBFULLNAME

# mc related
export HISTCONTROL=ignoreboth
. /usr/lib/mc/mc.sh

# quilt
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
complete -F _quilt_completion $_quilt_complete_opt dquilt
