if [ `uname -s` = "Darwin" ]; then
  # pyenv
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi

  # nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  # Rust
  export RUST_HOME=/usr/local/lib/rust
  export RUSTUP_HOME="$RUST_HOME"/rustup
  export CARGO_HOME="$HOME"/.cargo
  source "$CARGO_HOME"/env
fi

# Path
export PATH="$PATH:/Users/ippee/.local/bin"
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/usr/local/sbin/"
export PATH="$PATH:/Users/ippee/.mycmd/bin"

