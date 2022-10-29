#!/bin/sh

# Install Homebrew or make sure it's up to date
which -s brew
if [[ $? != 0 ]] ; then
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
brew install bat                        # cat with syntax highlighting and Git integration
brew install exa                        # modern replacement for ls
brew install fzf                        # command-line fuzzy finder
$(brew --prefix)/opt/fzf/install --all  # fzf keybindings and fuzzy completion
brew install ripgrep                    # faster version of grep with more features
brew install shellcheck                 # shell script static analysis tool
brew install tmux                       # terminal multiplexer

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font


echo "Homebrew Cleanup..."
# Cleanup
brew cleanup
