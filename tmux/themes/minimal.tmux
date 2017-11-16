# status bar colors

# alignment settings
set-option -g status-justify centre

# status left options
set-option -g status-left-length 20

# window list options
setw -g automatic-rename on
set-window-option -g window-status-format '#[dim]#I:#[default]#W#[fg=grey,dim]'
set-window-option -g window-status-current-format '#[fg=blue,bold]#I#[fg=blue]:#[fg=blue]#W#[fg=dim]'

# status left options
set -g status-left '#[bg=colour255] #S '

# status right options
set -g status-right '#[bg=colour255] %a '

set -g status-position top
bind-key b set-option status

