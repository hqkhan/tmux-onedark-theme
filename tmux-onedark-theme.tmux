#!/bin/bash
onedark_black="#292D3E"
onedark_blue="#82b1ff"
onedark_yellow="#ffcb6b"
onedark_red="#ff5370"
onedark_white="#bfc7d5"
onedark_green="#C3E88D"
onedark_visual_grey="#3E4452"
onedark_comment_grey="#697098"

palenight_darkblue="#081633"
palenight_purple="#c792ea"
magenta="#d16d9e"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "copy-mode-current-match-style" "fg=$onedark_black,bg=$onedark_red"
set "copy-mode-match-style" "fg=$onedark_black,bg=$onedark_green"
set "copy-mode-mark-style" "fg=$onedark_black,bg=$onedark_red"
set "ccolour" "bg=$onedark_black"

set "message-fg" "$onedark_white"
set "message-bg" "$onedark_black"

set "message-command-fg" "$onedark_white"
set "message-command-bg" "$onedark_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$onedark_black"
setw "window-status-bg" "$onedark_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$onedark_black"
setw "window-status-activity-fg" "$onedark_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$onedark_comment_grey"
set "window-active-style" "fg=$onedark_white"

set "pane-border-fg" "$onedark_white"
set "pane-border-bg" "$onedark_black"
set "pane-active-border-fg" "$onedark_green"
set "pane-active-border-bg" "$onedark_black"

set "display-panes-active-colour" "$onedark_yellow"
set "display-panes-colour" "$onedark_blue"

set "status-bg" "$onedark_black"
set "status-fg" "$onedark_white"

set "@prefix_highlight_fg" "$onedark_black"
set "@prefix_highlight_bg" "$onedark_green"
set "@prefix_highlight_copy_mode_attr" "fg=$onedark_black,bg=$onedark_green"
set "@prefix_highlight_output_prefix" "  "

set "status-right" "#[fg=$palenight_darkblue,bg=$onedark_black,nobold,nounderscore,noitalics]#[fg=$palenight_purple,bg=$palenight_darkblue,bold] $USER@#H "
set "status-left" "#[fg=$palenight_purple,bg=$palenight_darkblue,bold] #S #{prefix_highlight}#[fg=$palenight_darkblue,bg=$onedark_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$onedark_black,bg=$onedark_black,nobold,nounderscore,noitalics]#[fg=$onedark_white,bg=$onedark_black] #I  #W #[fg=$onedark_black,bg=$onedark_black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$onedark_black,bg=$magenta,nobold,nounderscore,noitalics]#[fg=$palenight_darkblue,bg=$magenta,bold] #I  #W #[fg=$magenta,bg=$onedark_black,nobold,nounderscore,noitalics]"
