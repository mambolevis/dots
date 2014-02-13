autoload -U compinit promptinit colors select-word-style
select-word-style bash
compinit -i
promptinit
colors

# history
setopt hist_ignore_space
setopt append_history
setopt hist_ignore_dups
setopt share_history

# env vars
export EDITOR=vim
export VISUAL=vim

# bundles

if [[ ! -d ~/.dots/zsh/zsh/antigen ]]; then
  git clone https://github.com/zsh-users/antigen.git ~/.dots/zsh/zsh/antigen
fi

source ~/.dots/zsh/zsh/antigen/antigen.zsh

# antigen
antigen bundles <<EOBUNDLES
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions src
EOBUNDLES

antigen apply

# configuration files
for file in ~/.dots/zsh/zsh/*.zsh; do
  source $file
done
