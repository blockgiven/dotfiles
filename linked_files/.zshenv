export EDITOR=emacs
export GOPATH=$HOME
export PATH=$HOME/bin:$PATH
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# https://github.com/lzap/gem-ripper-tags
export RIPPER_TAGS_EMACS=1
