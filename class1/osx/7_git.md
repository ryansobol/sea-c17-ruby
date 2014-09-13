### Install Git

You'll also need [Git](http://git-scm.com/), the version control system of choice among developers.

To install Git, run the following command:

```
brew install git
```

To verify Git is installed correctly, run the following command:

```
git --version
```

And you'll see something like this:

```
git version 2.0.1
```

### Git Aliases

```
git config --global alias.c 'commit -m'
git config --global alias.st 'status --short --branch'
git config --global alias.ci 'commit --verbose'
git config --global alias.ca 'commit --amend --reuse-message=HEAD'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'
git config --global alias.df 'diff HEAD'
git config --global alias.ll 'log --pretty=format:'%Cred%h' %>(11,trunc)%Cgreen%cr %<(10,trunc)%Cblue%cn%C(yellow)%d %Creset%s'
git config --global alias.la 'log --patch --stat --pretty=format:'%C(bold red)%h' %Cgreen%cr %Cblue%cn%C(yellow)%d %Creset%s'
git config --global alias.dfs 'diff --staged'
git config --global alias.rmb '!sh -c 'git branch -D $1 && git push origin :$1'' -
```

### Git Colors

```
git config --global color.branch.current 'yellow reverse'
git config --global color.branch.local 'yellow'
git config --global color.branch.remote 'green'
git config --global color.branch.upstream 'cyan'
git config --global color.diff.meta 'yellow bold'
git config --global color.diff.frag 'magenta bold'
git config --global color.diff.old 'red bold'
git config --global color.diff.new 'green bold'
git config --global color.diff.func 'normal bold'
git config --global color.status.added 'green bold'
git config --global color.status.changed 'yellow bold'
git config --global color.status.untracked 'cyan bold'
git config --global color.status.branch 'yellow'
```

### GitHub

```
git config --global user.name 'FULL NAME'
git config --global user.email 'EMAIL ADDRESS'
```

```
git config --global push.default 'simple'
git config --global credential.helper 'osxkeychain'
```
