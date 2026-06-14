set -l color00 '#1b1f20'
set -l color01 '#d8866a'
set -l color02 '#2d8f6d'
set -l color03 '#e5c185'
set -l color04 '#408da1'
set -l color05 '#bc3fbc'
set -l color06 '#4daaaa'
set -l color07 '#d4d4d4'
set -l color08 '#60716d'
set -l color09 '#fb916f'
set -l color0A '#92ba92'
set -l color0B '#e2c08d'
set -l color0C '#5590a4'
set -l color0D '#d670d6'
set -l color0E '#29b8db'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
