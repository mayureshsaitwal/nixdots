# Background command notifications (oh-my-zsh bgnotify plugin).
# Sourced before oh-my-zsh loads; bgnotify honours an existing
# bgnotify_formatted definition.

bgnotify_bell=false
bgnotify_threshold=4

function bgnotify_formatted {
  # Humanly readable elapsed time
  local elapsed="$(( $3 % 60 ))s"
  (( $3 < 60 )) || elapsed="$((( $3 % 3600) / 60 ))m $elapsed"
  (( $3 < 3600 )) || elapsed="$(( $3 / 3600 ))h $elapsed"

  local title icon
  if [ "$1" -eq 0 ]; then
    title="GG EZ"
    icon="$HOME/Downloads/dog_pass_icon.jpg"
  else
    title="Skill Issue"
    icon="$HOME/Downloads/dog_fail_icon.webp"
  fi

  bgnotify "$title - took $elapsed" "$2" "$icon"
}
