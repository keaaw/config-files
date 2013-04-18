export REPOS=~/repos
export WORK=$REPOS/work
export POSYL=$REPOS/work/posylni
export pia=$POSYL/iphoneapp/trunk/Posylnyi
export pbe=$POSYL/backend/trunk/operator
export dt=~/Desktop
export q=$REPOS/work/daryl_bigh91/quiz/trunk
export wm=$REPOS/work/susanreally/WritersMuse
export ig=$REPOS/work/bradkendall/iGarden/trunk
export timer=$WORK/ericdoherty/Timer/trunk/Timer-2-1-2
export sh=$WORK/fugo/Shakhtar/trunk
export pp=$WORK/tanthorjen/iPasswordPad/trunk/iPasswordPad
export ww=$WORK/toptal/WalkaWalka/trunk/WalkaWalka
export qt=$WORK/toptal/QuickType/trunk/QuickType

export mp=/Users/kmw-solutions/gitrepos/work/loytr/mypad/Facepad

export ppy=/Users/kmw-solutions/gitrepos/work/perpetually
export pl=/$ppy/permalink
export pb=$pl/bin
export pbf=$pl/pp/backfill
export pw=$ppy/permalink.wiki

export PERPETUALLY_HOME=$pl
export sr=$PERPETUALLY_HOME/lib/swf_rewrite
export srp=$sr/swf_rewrite_py
export tf=$sr/test_files
export st=$sr/swf_tools_c
export ss=$sr/sample_swfs
export tss=$sr/tests/test_server/static
export htc=$tss/nytimes_215
export ut=$tss/unit-tests

export TINYSCHEMEINIT=/Users/kmw-solutions/nobackup/tinyscheme-1.40/init.scm

alias soc='source ~/.bashrc'
alias h='history'
alias up="cd .."
alias ll="ls -l"
alias ltr="ls -ltr"
alias ss="svn status"
alias vib="vi ~/.bashrc"
alias glo="git log --oneline -n 5"
alias gs="clear; git status"
alias gsh="git status | head"
alias gss="git status -s"
alias ga="git add"
alias gaup="git add -u permalink ; gs"
alias gaupp="git add -u pp ; gs"
alias gauppp="git add -u pp permalink ; gs"
alias gcm="git commit -m "
alias gl="git log --graph --full-history --all --color --decorate  --oneline"

# "home directory git" -- config-files repository
#
alias hmg='git --git-dir=$HOME/.config-files.git/ --work-tree=$HOME'
alias hgl="hmg log --graph --full-history --all --color --decorate  --oneline"

alias sd='swfdump --full'
alias sm='swfmill swf2xml'
alias an='python $PERPETUALLY_HOME/lib/swf_rewrite/swf_rewrite_py/annotate.py'
alias cfl='cat /Users/kmw-solutions/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
alias la='$PERPETUALLY_HOME/bin/list_archive'
alias ar='$PERPETUALLY_HOME/bin/archiver --noq --user 1@1.com --crawl page --url '
alias sb='python $PERPETUALLY_HOME/pp/backfill/swf_backfiller.py '
export PATH=$PATH:/usr/local/git/bin:~/bin
alias uts='python $sr/tests/test_server/manage.py runserver 0.0.0.0:8002'
alias ne1='$PERPETUALLY_HOME/bin/norc_execute_one'
alias nr='norc_reporter -e -q -s'
alias rds='python $pl/permalink/manage.py runserver 0.0.0.0:8000'
alias shell='python $pl/permalink/manage.py shell'
alias dbshell='python $pl/permalink/manage.py dbshell'
alias aut='python $pl/permalink/add_to_archive/tests/unit_a2a.py'
alias pcut='python $pl/pp/pilot_crawl/tests/unit_pc.py'
alias rpc='bin/norc_execute_one PilotCrawl'
alias rsc='bin/norc_execute_one SQSArchiveRequest-NORMAL'
alias ciut='python $pl/permalink/core/tests/unit_ci.py'

#source ~/.bash_prompt

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=.:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.bash_toptal


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
