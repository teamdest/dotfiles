if [[ -z "$ZELLIJ" && -z $SSH_CLIENT ]]; then
    zellij attach -c main
fi


if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
      exit
fi
