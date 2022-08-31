#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Aliases
alias ls='ls --color=auto'
alias ra='ranger'
alias nv='nvim'
alias hx='helix'
alias blui='bluetuith'
alias qe='qutebrowser'

# Environment variables: Default programs / Config files location / App cache location / XDG locations
export VISUAL=helix
export EDITOR=helix
export BROWSER=qutebrowser
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export CARGO_HOME=~/.local/share/cargo
export GOPATH=~/.local/share/go
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.cache
export XINITRC=~/.config/x11/xinitrc

# Functions
function gsync(){
  git add .
  git commit -m update
  git push
}

# Start Starship
eval "$(starship init bash)"
