EDITOR=E
editor=$EDITOR
plan9=$PLAN9
path=(. $plan9/bin $path)
shell=rc
SHELL=$shell
font=/mnt/font/LucidaGrande/14a/font
PAGER=nobs

plumber
fontsrv &

fn %{$*}

fn gs{git status -sb $*}
fn gd{git diff $*}
fn gc{git commit $*}
fn gca{gc -a $*}
fn ga{git add $*}
fn gp{git push -q $*}
fn gu{
	git diff-index --quiet HEAD --
	s=$status
	if(! ~ s '') git stash -q
	git pull --rebase
	if(! ~ s '') git stash pop -q
}
