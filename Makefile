atuin-install:
	curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh | bash
	# Reload shell
	exec /usr/bin/zsh

atuin-remove:
	sudo apt remove atuin
	# Reload shell
	exec /usr/bin/zsh

# TLDR
