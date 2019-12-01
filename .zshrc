precmd(){
music="\e]2;"
        music+=$(~/.nowplaying)    
        music+="\a"
        printf $music
}
