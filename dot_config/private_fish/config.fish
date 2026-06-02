if status is-interactive
  atuin init fish | source
  zoxide init fish | source
  abbr -a --position anywhere -- --help '--help | bat -plhelp'
  abbr -a --position anywhere -- -h '-h | bat -plhelp'
  abbr -a note toney
end
