# :musical_note:Apple Music "Now Playing" Titlebar for Oh-My-Zsh:musical_note:
### (Note: shell scripts specific to OSX)  

## Setup is simple

**Step 1**: Copy `.current-track` & `.nowplaying` to Home directory  
**Step 2**: Add contents of `.zshrc-now-playing` to your personal `.zshrc` file in Home directory. Or just copy it from here:  
```
precmd(){ 
    music="\e]2;"
    music+=$(~/.nowplaying)
    music+="\a"
    printf $music
    }
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
```
**Step 3 (iTerm2)**: Go to iTerm2 Preferences > Profiles > General and check :ballot_box_with_check:"Applications in terminal may change the title"  
### Voilà!
Note:`precmd()` method runs right before every command is executed, so titlebar will be updated with new track information accordingly.
![screenshot](/img/oh-my-zsh-apple-music-titlebar.png)  
### My shell config
Terminal: [iTerm2](https://iterm2.com/) (JSON profile included in :open_file_folder:/shellconfig)  
Shell: [Oh-My-Zsh](https://ohmyz.sh/)  
Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (.p10k.zsh included in :open_file_folder:/shellconfig)  
Font: [Hasklug Nerd Font 14pt](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hasklig.zip)
Packages: [colorls](https://github.com/athityakumar/colorls)