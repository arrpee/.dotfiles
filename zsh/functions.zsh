# Auto LS
function chpwd() { exa --group-directories-first --all --icons; }

# mkdir and cd
function mkcd() {
	mkdir "$@" && cd "$_"
}
