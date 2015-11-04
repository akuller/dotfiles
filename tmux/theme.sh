#### COLOUR

tm_icon="♟"
tm_color_active=colour213
tm_color_inactive=colour241
tm_color_feature=colour4
tm_color_music=colour160
tm_color_orange=colour9

# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg yellow
set-option -g status-bg color235
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg brightblue
set-window-option -g window-status-bg default
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g window-status-current-fg $tm_color_orange
set-window-option -g window-status-current-bg default
set-window-option -g  window-status-current-format "#[bold]#I #W"

# pane border
set-option -g pane-border-fg blue
set-option -g pane-active-border-fg $tm_color_orange

# message text
set-option -g message-bg color235
set-option -g message-fg $tm_color_orange


# pane number display
set-option -g display-panes-active-colour blue
set-option -g display-panes-colour $tm_color_orange

# clock
set-window-option -g clock-mode-colour green

tm_spotify="#[fg=$tm_color_music]#(osascript ~/Desktop/other-dotfiles/spotify.scpt)"
tm_itunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/itunes.scpt)"
tm_rdio="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/rdio.scpt)"
# tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=green] %R %d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"
tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"

set -g status-left $tm_session_name' '
set -g status-right $tm_itunes' '$tm_rdio' '$tm_spotify' '$tm_date' '$tm_host