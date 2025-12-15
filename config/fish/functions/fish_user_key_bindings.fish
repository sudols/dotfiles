function fish_user_key_bindings
	bind -M insert \cf forward-char
	bind -M insert \cn down-or-search
	bind -M insert \cp up-or-search
	bind -M insert \e\x7F backward-kill-word
	bind -M insert \b backward-kill-word
end
