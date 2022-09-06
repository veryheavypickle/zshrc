# pyenv doesn't switch
# https://github.com/pyenv/pyenv/issues/1446
eval "$(pyenv init -)"

# brew install youtube-dl
# make audio extraction default and set download location to downloads
alias dl="youtube-dl -x -o '~/Downloads/%(title)s.%(ext)s'"
