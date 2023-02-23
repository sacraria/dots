# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/kaknia/.oh-my-bash'
OSH_THEME="rr" # rr purity
OMB_USE_SUDO=false

completions=(
  git
  composer
  ssh
)

plugins=(
  git
)

source "$OSH"/oh-my-bash.sh
export LANG=pt_BR.UTF-8

alias :q="exit"
alias nofetch=""
alias steam="flatpak run com.valvesoftware.Steam"
alias veloren="flatpak run net.veloren.airshipper"
alias stk="./Games/STK/SuperTuxKart-1.4-linux-x86_64/run_game.sh"
alias prismlauncher="./Games/Prismlauncher/bin/prismlauncher"
alias hyprland="~/.Hyprland"
export _JAVA_AWT_WM_NONREPARENTING=1

 if test -z "${XDG_RUNTIME_DIR}"; then
        export XDG_RUNTIME_DIR=/tmp/0-runtime-dir
           if ! test -d "${XDG_RUNTIME_DIR}"; then
                      mkdir "${XDG_RUNTIME_DIR}"
                             chmod 0700 "$XDG_RUNTIME_DIR}"
           fi
 fi
