# Fastfetch
if command -v fastfetch &> /dev/null; then
    fastfetch
fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH: solo se añaden los directorios que existen (N-/) y sin duplicados (-U)
typeset -U path
path=(
  $HOME/bin(N-/)
  $HOME/.local/bin(N-/)
  $HOME/.opencode/bin(N-/)
  $path
  /opt/nvim-linux64/bin(N-/)
)
export PATH

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git nvm sudo copypath copyfile copybuffer fzf)
# Plugins externos: solo si están clonados en $ZSH_CUSTOM (syntax-highlighting el último)
for _p in zsh-autosuggestions zsh-syntax-highlighting; do
  [[ -d "${ZSH_CUSTOM:-$ZSH/custom}/plugins/$_p" ]] && plugins+=($_p)
done
unset _p

source $ZSH/oh-my-zsh.sh

# CUSTOM ALIAS
alias oldcat="command cat"
alias oldls="command ls"
alias oldvim="command vi"

# bat/cat
if command -v bat &> /dev/null; then
    alias cat="bat"
    alias catn='bat --style=plain'
    alias catnp='bat --style=plain --paging=never'
elif command -v batcat &> /dev/null; then
    alias cat="batcat"
    alias catn='batcat --style=plain'
    alias catnp='batcat --style=plain --paging=never'
fi

alias gc="git commit -n -am"

if command -v nvim &> /dev/null; then
    alias vim="nvim"
fi

# ls
if command -v lsd &> /dev/null; then
    alias ll='lsd -lh --group-dirs=first'
    alias la='lsd -a --group-dirs=first'
    alias l='lsd --group-dirs=first'
    alias lla='lsd -lha --group-dirs=first'
    alias ls='lsd --group-dirs=first'
fi


# CUSTOM FUNCTIONS
irda() {
  local container_name="${1:-}"
  local container_id
  invoke restart
  if [ -n "$container_name" ]; then
    container_name=$container_name"_odoo_1"
    echo $container_name
    container_id=$(docker ps | grep "$container_name" | cut -d" " -f1)
  else
    container_id=$(docker ps | grep "/odoo" | cut -d" " -f1)
  fi

  if [ -n "$container_id" ]; then
    docker attach "$container_id"
  else
    echo "No se encontró ningún contenedor de Docker."
  fi
}

## Búscar ficheros, con ripgrep fzf y bat preview
function jcf-ff() {
    if [ -z "$1" ]; then
        echo "Usage: jcf-ff <ripgrep-query> [additional rg options]"
        return 1
    fi

    local query="$1"
    shift  # Desplaza los argumentos para que `$@` contenga solo los parámetros adicionales
    rg --hidden --files-with-matches "$query" "$@" | \
        fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' \
            --preview-window=right:60%:wrap \
            --bind 'enter:execute(nvim {} < /dev/tty)'
}

## Buscar téxto en ficheros, con ripgrep fzf y bat preview
function jcf-fg() {
    if [ -z "$1" ]; then
        echo "Usage: jcf-fg <ripgrep-string> [additional rg options]"
        return 1
    fi

    local query="$1"
    shift  # Desplaza los argumentos para que `$@` contenga solo los parámetros adicionales
    rg --hidden --line-number --column "$query" "$@" | \
        fzf --preview="bat --style=numbers --color=always --line-range=:500 --highlight-line {2} {1} | tail -n +{2}" \
            --delimiter=":" \
            --preview-window=right:50%
}


function rzf() {
    local query="$1"  # Toma el texto de búsqueda como primer argumento
    rg --line-number --column "$query" | fzf --preview="bat --style=numbers --color=always --line-range=:500 {1} | tail -n +{2}" --delimiter=":" --preview-window=right:50%
}

function sshf() {
    local host

    host=$(
        awk '$1 == "Host" {
            for (i=2; i<=NF; i++)
                if ($i !~ /[*?]/) print $i
        }' ~/.ssh/config |
        sort -u |
        fzf \
            --prompt="󰣀 SSH > " \
            --height=80% \
            --layout=reverse \
            --border=rounded \
            --header="ENTER conectar  •  ESC salir" \
            --preview '
                echo "  CONEXIÓN SSH"
                echo "  ──────────────────────"
                ssh -G {} 2>/dev/null |
                    grep -E "^(hostname|user|port|identityfile|identitiesonly) "
            ' \
            --preview-window='right:50%:wrap'
    ) || return

    [[ -n "$host" ]] && ssh "$host"
}


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 1Password SSH agent (solo si el socket existe)
if [[ -S "$HOME/.1password/agent.sock" ]]; then
    export SSH_AUTH_SOCK="$HOME/.1password/agent.sock"
fi

# Doodba: que git-aggregate y los contenedores creen ficheros con mi usuario, no root
export UID
export GID="$(id -g)"
export DOODBA_GITAGGREGATE_UID="$(id -u)"
export DOODBA_GITAGGREGATE_GID="$(id -g)"
export DOODBA_UMASK="$(umask)"

# zoxide
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init --cmd j zsh)"
fi
