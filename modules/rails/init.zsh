#
# Defines Ruby on Rails aliases.
#
# Authors:
#   Robby Russell <robby@planetargon.com>
#   Jake Bell <jake.b.bell@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load dependencies.
pmodload 'ruby'

# Return if requirements are not found.
if (( ! $+commands[bundle] )); then
  return 1
fi

#
# Aliases
#

alias ra='bundle exec rails'
alias rac='bundle exec rails console'
alias ras='bundle exec rails server'
alias rag='bundle exec rails generate'
alias rad='bundle exec rails destroy'
alias ral='tail -f "$(ruby-app-root)/log/development.log"'
alias ralc='bundle exec rake log:clear'
