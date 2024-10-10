bash-file() # Create new shell file
{
  FILE_PATH="$1.sh"
  mkdir -p -- "$(dirname "$FILE_PATH")" && touch -- "$FILE_PATH"
  echo '#!/usr/bin/env bash' >> "$FILE_PATH"
  echo '' >> "$FILE_PATH"
  chmod +x "$FILE_PATH"
}

mkcd() # Create a new directory and enter it
{
  mkdir -p "$@"
  cd "$@" || exit
}

### ---- Python Functions ------------------
mkenv() # create python virtual environment
{
    python3 -m venv .venv
    source .venv/bin/activate

    # if requirements.txt exists, install dependencies
	if [[ -f "requirements.txt" ]]; then
		pip install -r requirements.txt
    fi

    # install base packages
    pip install \
        black \
        flake8 \
        isort \
        pylint
}