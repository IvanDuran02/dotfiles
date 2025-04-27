# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# jenv - Java version manager
export PATH="$HOME/dotfiles/jenv/bin:$PATH"
eval "$(jenv init -)"

# Android SDK's
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin


# Golang
export PATH="$HOME/go/bin:$PATH"

# swww wallpaper engine
export PATH="$HOME/Coding/Clones/swww/target/release:$PATH"
# Starts swww-daemon on terminal startup
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon > /dev/null 2>&1 &
fi

# Carbon lang
export PATH="$PATH:/home/ivan/Coding/Carbon/carbon_toolchain-0.0.0-0.nightly.2025.04.17/bin"

# Alias
alias vim=nvim
alias wezterm='flatpak run org.wezfurlong.wezterm'
alias discord='flatpak run com.discordapp.Discord'
alias open=thunar

# CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/catppuccin_mocha.omp.json')"
#eval "$(oh-my-posh init zsh --config https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/catppuccin.omp.json)"
#eval "$(oh-my-posh init zsh --config https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/agnoster.omp.json)"

