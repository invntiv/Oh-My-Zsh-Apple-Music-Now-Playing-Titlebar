# :musical_note:Apple Music "Now Playing" Titlebar for Oh-My-Zsh:musical_note:
### (Note: shell scripts specific to OSX)  

## Setup is simple

**Step 1**: Copy `.current-track` & `.nowplaying` to Home directory  
**Step 2**: Add contents of `.zshrc-precmd` to your personal `.zshrc` file in Home directory. Or just copy it from here:  
```
precmd(){ 
    music="\e]2;"
    music+=$(~/.nowplaying)
    music+="\a"
    printf $music
    }
```
**Voilà!**  
Note:`precmd()` method runs right before every command is executed, so titlebar will be updated with new track information accordingly.
![screenshot](/img/oh-my-zsh-apple-music-titlebar.png)