# ZSH on Termux!
> Spice up termux with beautiful themes and productivity plugins to make your life easier!

### Install ZSH, GIT & LSD
```
pkg install zsh git lsd vim
```

### Install [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Add LSD alias to LS in ZSH config file
```
echo "alias ls=lsd" >> ~/.zshrc
```

### Install [Termux-style](https://github.com/adi1090x/termux-style)
```
git clone https://github.com/adi1090x/termux-style && cd termux-style && ./install
```

### Setup Termux-Style
```
termux-style
```
> [!Important]
> Restart Termux

### Install [powerlevel10k](https://github.com/romkatv/powerlevel10k)
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### Install [ZSH-Autoupdate](https://github.com/TamCore/autoupdate-oh-my-zsh-plugins)
```
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
```

### Install [ZSH-Autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
```
git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
```

### Install [ZSH-Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Install [ZSH-Syntax-Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Open and edit ZSH config file
```
vim $HOME/.zshrc
```

### Set theme in ZSH config file

> [!Note]
> Go to line 11 and comment out the existing theme. Then append the code below:

```
ZSH_THEME="powerlevel10k/powerlevel10k" 
```

### Set plugins in ZSH config file

> [!Note]
> Go to line 74 and comment out the existing plugins. Then append the code below:

```
plugins=(git autoupdate zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting)
```

> [!Note]
> `I` to write the file.
> `ESC` to leave interactive mode.
> `ZZ` to save and exit vim editor. 

### Customize Update Frequency to daily
```
export UPDATE_ZSH_DAYS=1
```

### Reload the shell:
```
source ~/.zshrc 
```

Now setup PowerLevel10K to your liking.
