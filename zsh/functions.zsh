# Auto LS
function chpwd() { exa --group-directories-first --all --icons; }

# mkdir and cd
function mkcd() {
	mkdir "$@" && cd "$_"
}

function pyve() {
	venv=${1:-'.venv'}
	if [[ -f "$venv/bin/activate" ]]; then
		source "$venv/bin/activate"
	else
		python3 -m venv $venv && source "$venv/bin/activate" && pip install --upgrade pip
	fi
}
