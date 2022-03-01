# Setup fzf
# ---------
if [[ ! "$PATH" == */home/pierre/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/pierre/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/pierre/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/pierre/.fzf/shell/key-bindings.bash"

export FZF_DEFAULT_OPTS='--height 40% --border'
