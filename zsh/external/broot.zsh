
zmodload zsh/mapfile

# -- Run broot, cd into pathfile if successful --
# Depends: zmapfile
br () {  # [<broot-opt>...]
  emulate -L zsh

  local pathfile=$(mktemp)
  trap "rm ${(q-)pathfile}" EXIT INT QUIT
  if { broot --verb-output "$pathfile" $@ } {
    if [[ -r $pathfile ]] {
      local folder=${mapfile[$pathfile]}
      if [[ $folder ]]  cd $folder
    }
  } else {
    return
  }
}

# -- Refresh prompt, rerunning any hooks --
# Credit: Roman Perepelitsa
# Original: https://github.com/romkatv/zsh4humans/blob/v2/fn/-z4h-redraw-prompt
.zle_redraw-prompt () {
  for 1 ( chpwd $chpwd_functions precmd $precmd_functions ) {
    if (( $+functions[$1] ))  $1 &>/dev/null
  }
  zle .reset-prompt
  zle -R
}
zle -N .zle_redraw-prompt

# -- Folder Navigation: Down --
# Key: ctrl+b
# Depends: ~/.config/broot/select-folder.hjson
# Optional: .zle_redraw-prompt
.zle_cd-broot () {
  echoti rmkx
  cd "$(
    <$TTY broot --color yes --git-ignored --show-git-info --only-folders \
    --conf "${XDG_CONFIG_HOME:-${HOME}/.config}/broot/select-folder.hjson;${XDG_CONFIG_HOME:-${HOME}/.config}/broot/conf.hjson"
  )"
  if (( $+functions[.zle_redraw-prompt] ))  zle .zle_redraw-prompt
  if (( $+functions[_zsh_highlight]     ))  _zsh_highlight
}
zle -N            .zle_cd-broot
bindkey "^B" .zle_cd-broot  # alt+down
