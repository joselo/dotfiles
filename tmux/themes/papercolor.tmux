set-option -g status "on"

# default statusbar colors
set-option -g status-bg colour245 #bg1
set-option -g status-fg colour223 #fg1

# default window title colors
set-window-option -g window-status-bg colour24 #yellow
set-window-option -g window-status-fg colour245 #bg1

set-window-option -g window-status-activity-bg colour245 #bg1
set-window-option -g window-status-activity-fg colour248 #fg3

# active window title colors
set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-fg colour245 #bg1

# pane border
set-option -g pane-active-border-fg colour240 #fg2
set-option -g pane-border-fg colour245 #bg1

# message infos
set-option -g message-bg colour239 #bg2
set-option -g message-fg colour223 #fg1

# writting commands inactive
set-option -g message-command-bg colour239 #fg3
set-option -g message-command-fg colour223 #bg1

# pane number display
set-option -g display-panes-active-colour colour240 #fg2
set-option -g display-panes-colour colour245 #bg1

# clock
set-window-option -g clock-mode-colour colour109 #blue

# bell
set-window-option -g window-status-bell-style fg=colour235,bg=colour167 #bg, red

# Colors

set-option -g status-attr "none"
set-option -g status-justify "left"
set-option -g status-left-attr "none"
set-option -g status-left-length "80"
set-option -g status-right-attr "none"
set-option -g status-right-length "80"
set-window-option -g window-status-activity-attr "none"
set-window-option -g window-status-attr "none"
set-window-option -g window-status-separator ""


set-option -g status-left "#[fg=colour248, bg=colour241] #S #[fg=colour241, bg=colour245, nobold, noitalics, nounderscore]"
set-option -g status-right "#[fg=colour239, bg=colour245, nobold, nounderscore, noitalics]#[fg=colour246,bg=colour239] %d %b %R #[fg=colour240, bg=colour239, nobold, noitalics, nounderscore]#[fg=colour245, bg=colour248] #(~/.dotfiles/tmux/battstat.sh -c "AC:" -d "BAT:" {i} {p} {t})"

set-window-option -g window-status-current-format "#[fg=colour239, bg=colour248, :nobold, noitalics, nounderscore]#[fg=colour239, bg=colour24] #I #[fg=colour239, bg=colour24, bold] #W #[fg=colour24, bg=colour245, nobold, noitalics, nounderscore]"
set-window-option -g window-status-format "#[fg=colour245,bg=colour239,noitalics]#[fg=colour223,bg=colour239] #I #[fg=colour223, bg=colour239] #W #[fg=colour239, bg=colour245, noitalics]"

