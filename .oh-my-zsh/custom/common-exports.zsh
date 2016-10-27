export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim -X'
export GIT_EDITOR="$EDITOR"
export PROMPT_COMMAND=PromptCommand

# ssh
export SSH_KEY_PATH="$HOME/.ssh/id_rsa"

export DEFAULT_SESSION_NAME="$(basename $SHELL)"
export DEFAULT_SESSION_COLOR="lightblue,bold"

export ARCHFLAGS="-arch x86_64"
