#!/bin/bash

VENV_NAME="neovim"

if pyenv virtualenvs | grep -q "$VENV_NAME"; then
  PYTHON_VERSION=$(pyenv version-name)
  echo "Using existing virtualenv '$VENV_NAME' with Python $PYTHON_VERSION."
else
  PYTHON_VERSION=$(pyenv versions --bare | grep -E "^3\.[0-9]+\.[0-9]+$" | tail -1)
  pyenv install "$PYTHON_VERSION"
  pyenv virtualenv "$PYTHON_VERSION" "$VENV_NAME"
  echo "Created virtualenv '$VENV_NAME' with Python $PYTHON_VERSION."
fi

PYTHON_EXEC="$HOME/.pyenv/versions/$VENV_NAME/bin/python"

if ! command -v nvm &> /dev/null; then
  echo "Installing nvm..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

echo "Installing or upgrading nvm to latest..."
nvm install node --latest-npm

echo "pip install nvim dependencies to '$VENV_NAME' virtualenv"
$PYTHON_EXEC -m pip install --upgrade pynvim pyright jupyter_client jupytext cairosvg pnglatex plotly kaleido pyperclip nbformat pillow ipykernel ipython 
$PYTHON_EXEC -m ipykernel install --user --name neovim --display-name "Python (neovim)"

echo "Setup complete"

