EDITOR=E
editor=$EDITOR

PAGER=nobs

plan9=/Users/iv/src/plan9port
path=($plan9/bin $path)

fn %{$*}

fn ga{git add $*}
fn gs{git status -bs $*}
fn gp{git push -q $*}
fn gu{git up -q $*}
fn gl{git log $*}
fn gd{git diff $*}
fn gc{git commit -v $*}
fn gg{git log --graph --oneline --decorate $*}

fn f{git grep -n $*}
fn ff{f '^'$*}
