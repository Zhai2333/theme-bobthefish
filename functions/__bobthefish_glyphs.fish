# Modify Material Design Icons
function __bobthefish_glyphs -S -d 'Define glyphs used by bobthefish'
  # Powerline glyphs
  set -x branch_glyph            \uE0A0
  set -x right_black_arrow_glyph \uE0B0
  set -x right_arrow_glyph       \uE0B1
  set -x left_black_arrow_glyph  \uE0B2
  set -x left_arrow_glyph        \uE0B3

  # Additional glyphs
  set -x detached_glyph          \u27A6
  set -x tag_glyph               \u2302
  set -x nonzero_exit_glyph      \uFAD5$last_status\ 
  set -x superuser_glyph         \uF922
  set -x bg_job_glyph            \uF53E\  
  set -x hg_glyph                \u263F

  # Python glyphs
  set -x superscript_glyph       \u00B9 \u00B2 \u00B3
  set -x virtualenv_glyph        \u25F0
  set -x pypy_glyph              \u1D56

  set -x ruby_glyph              ''
  set -x go_glyph                ''

  # Desk glyphs
  set -x desk_glyph              \u25F2

  # Kubernetes glyphs
  set -x k8s_glyph               \u2388 # '⎈'

  # Vagrant glyphs
  set -x vagrant_running_glyph   \u2191 # ↑ 'running'
  set -x vagrant_poweroff_glyph  \u2193 # ↓ 'poweroff'
  set -x vagrant_aborted_glyph   \u2715 # ✕ 'aborted'
  set -x vagrant_saved_glyph     \u21E1 # ⇡ 'saved'
  set -x vagrant_stopping_glyph  \u21E3 # ⇣ 'stopping'
  set -x vagrant_unknown_glyph   '!'    # strange cases

  # Git glyphs
  set -x git_dirty_glyph      '*'
  set -x git_staged_glyph     '~'
  set -x git_stashed_glyph    '$'
  set -x git_untracked_glyph  '…'
  set -x git_ahead_glyph      \u2191 # '↑'
  set -x git_behind_glyph     \u2193 # '↓'
  set -x git_plus_glyph       '+'
  set -x git_minus_glyph      '-'
  set -x git_plus_minus_glyph '±'

  # Disable Powerline fonts (unless we're using nerd fonts instead)
  if [ "$theme_powerline_fonts" = "no" -a "$theme_nerd_fonts" != "yes" ]
    set branch_glyph            \u2387
    set right_black_arrow_glyph ''
    set right_arrow_glyph       ''
    set left_black_arrow_glyph  ''
    set left_arrow_glyph        ''
  end

  # Use prettier Nerd Fonts glyphs
  if [ "$theme_nerd_fonts" = "yes" ]
    set branch_glyph     \uFB2B
    set detached_glyph   \uFC16
    set tag_glyph        \uF918

    set virtualenv_glyph \uF81F ' '
    set go_glyph         \uFCD1 ' '
    set node_glyph       \uf898 ' '

    set vagrant_running_glyph  \uF55C # ↑ 'running'
    set vagrant_poweroff_glyph \uF544 # ↓ 'poweroff'
    set vagrant_aborted_glyph  \uF655 # ✕ 'aborted'
    set vagrant_unknown_glyph  \uF521 # strange cases

    set git_dirty_glyph      \uF8EA '' # nf-oct-pencil
    set git_staged_glyph     \uFD16 '' # nf-fa-save
    set git_stashed_glyph    \uF565 '' # nf-fa-paperclip
    set git_untracked_glyph  \uF7D6 '' # nf-fa-question
    # set git_untracked_glyph  \uF141 '' # nf-fa-ellipsis_h

    set git_ahead_glyph      \uF642 # nf-oct-chevron_up
    set git_behind_glyph     \uF63F # nf-oct-chevron_down

    set git_plus_glyph       \uF85F # fa-sort-asc
    set git_minus_glyph      \uF85C # fa-sort-desc
    set git_plus_minus_glyph \uFA4E # fa-sort
  end

  # Avoid ambiguous glyphs
  if [ "$theme_avoid_ambiguous_glyphs" = "yes" ]
    set git_untracked_glyph '...'
  end
end
