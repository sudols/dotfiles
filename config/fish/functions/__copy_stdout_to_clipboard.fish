function __copy_stdout_to_clipboard --description 'copy to clipboard function'
    set -l cmd xclip -selection clipboard
    if set -q PAGER
        echo $PAGER | read -at cmd
    end
end
