pkglist=(
  ms-python.python
  foxundermoon.shell-format
  VisualStudioExptTeam.vscodeintellicode
  MS-vsliveshare.vsliveshare-pack
  eamodio.gitlens
  mhutchie.git-graph
  piotrpalarz.vscode-gitignore-generator
  alefragnani.project-manager
  PKief.material-icon-theme
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
