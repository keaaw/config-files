export PATH=/usr/local/mysql/bin:$PATH
export MANPATH=/usr/local/mysql/man:$MANPATH

# opens a finder window on the parameter
#
function s
{
	open /System/Library/CoreServices/Finder.app $1
}

##
# Your previous /Users/kmw-solutions/.profile file was backed up as /Users/kmw-solutions/.profile.macports-saved_2010-05-09_at_09:36:17
##

# MacPorts Installer addition on 2010-05-09_at_09:36:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

source ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
