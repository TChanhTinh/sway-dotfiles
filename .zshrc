# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf

### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
bindkey '^H' backward-kill-word


export wallDIR=$HOME/Pictures/wallpapers
export lock=$HOME/.config/hypr/UserScripts/LockScreen.sh
export SwwwRandom=$HOME/.config/hypr/UserScripts/WallpaperAutoChange.sh

export CLUTTER_BACKEND=wayland
# export GDK_BACKEND=wayland=x11
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_TYPE=sway
export XDG_CURRENT_TYPE=sway
export XDG_CURRENT_DESKTOP=sway
export GTK_IM_MODULE=fcitx
export  QT_IM_MODULE=fcitx
export  XMODIFIERS=@im=fcitx

# vulkan
export MOZ_ENABLE_WAYLAND=1

export PATH=$PATH:/opt/rocm-6.0.2/bin

