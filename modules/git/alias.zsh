#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Settings
#
#

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
  || _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
  || _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
  || _git_log_brief_format='%C(green)%h%C(reset) \\t %C(blue)(%an)%C(reset) %s %C(red)%d%C(reset)'

# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
  || _git_status_ignore_submodules='none'

alias g='git'

# Branch (b)
alias gb='git branch'

# Checkout
alias gco='git checkout'

# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcm='git commit --message'

# Log (l)
alias gl='git log --topo-order --pretty=format:${_git_log_oneline_format}'
alias glb='git log --topo-order --pretty=format:${_git_log_brief_format}'
alias glg='git log --topo-order --all --graph --pretty=format:${_git_log_oneline_format}'
alias gls='git log --topo-order --pretty=format:${_git_log_medium_format}'

# Merge (m)
alias gm='git merge'
alias gma='git merge --abort'
alias gmt='git mergetool'

# Fetch (f)
alias gf='git fetch'

# Push (p)
alias gp='git push'
alias gpf='git push --force'
alias gpa='git push --all && git push --tags'
alias gpt='git push --tags'
alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

# Rebase (r)
alias gr='git rebase'

# Stash (s)
alias gs='git stash'
alias gsp='git stash pop'
alias gss='git stash save --include-untracked'

# Working Copy (w)
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
