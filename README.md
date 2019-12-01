# Apple Music "Now Playing" Titlebar for Oh-My-Zsh

## Setup

**Step 1**: Copy `.current-track` & `.nowplaying` to Home directory  
**Step 2**: Add contents of `.zhrc-precmd` to your personal `.zshrc` file in Home directory. Or just copy it from here:  
`precmd(){ music="\e]2;" music+=$(~/.nowplaying) music+="\a" printf $music }`
