function __fish_paginate --description 'Paginate the current command using the users default pager'
    set -l cmd less -r
    if set -q PAGER
        echo $PAGER | read -at cmd
    end

    fish_commandline_append " &| $cmd"
    if command -q unbuffer; fish_commandline_prepend unbuffer; else if command -q doas; fish_commandline_prepend doas; end
end
