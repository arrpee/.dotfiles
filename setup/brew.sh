#!/bin/sh

# Install Homebrew or make sure it's up to date
which -s brew
if [[ $? != 0 ]]; then
  echo "Homebrew not found. Installing Homebrew..."
  (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
else
  echo "Homebrew already installed. Updating..."
  brew update
  brew upgrade
fi

brew analytics off
export HOMEBREW_NO_ANALYTICS=1

echo "Installing Homebrew packages..."
# cli tools
brew install bat                       # cat with syntax highlighting and Git integration
brew install dog                       # dig but better
brew install duf                       # disk usage/free utility
brew install exa                       # modern replacement for ls
brew install fd                        # find but fast and user-friendly
brew install fzf                       # command-line fuzzy finder
$(brew --prefix)/opt/fzf/install --all # fzf keybindings and fuzzy completion
brew install jq                        # command-line JSON processor
brew install ripgrep                   # faster version of grep with more features
brew install shellcheck                # shell script static analysis tool
brew install shfmt                     # shell script formatter
brew install tmux                      # terminal multiplexer

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font

# casks
brew install --cask iterm2
brew install --cask visual-studio-code

echo "Homebrew Cleanup..."
# Cleanup
brew cleanup
