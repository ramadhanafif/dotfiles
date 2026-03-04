function ls --wraps='eza -al --color=always --group-directories-first --icons' --wraps='exa --icons' --description 'alias ls=exa --icons'
    exa --icons $argv
end
