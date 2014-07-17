#### alias.br

# List the existing local branches
git config --global alias.br branch


#### color.branch

# Use customized color for branch output
git config --global color.branch.current 'yellow reverse'
git config --global color.branch.local 'yellow'
git config --global color.branch.remote 'green'
git config --global color.branch.upstream 'cyan'


#### alias.st

# Show a shorter, more information dense working tree status
git config --global alias.st 'status --short --branch'


#### color.status

# Use customized color for status output
git config --global color.status.added 'green bold'
git config --global color.status.branch 'yellow'
git config --global color.status.changed 'yellow bold'
git config --global color.status.untracked 'cyan bold'
