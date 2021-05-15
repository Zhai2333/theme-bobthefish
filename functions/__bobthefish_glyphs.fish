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
  set -x nonzero_exit_glyph      '! '
  set -x private_glyph           \uE0A2 ' '
  set -x superuser_glyph         '$ '
  set -x bg_job_glyph            '% '
  set -x hg_glyph                \u263F

  # Python glyphs
  set -x superscript_glyph       \u00B9 \u00B2 \u00B3
  set -x virtualenv_glyph        \u25F0
  set -x pypy_glyph              \u1D56

  set -x ruby_glyph              ''
  set -x go_glyph                ''
  set -x nix_glyph               ''

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
    set private_glyph           \u29B8 ' '
    set branch_glyph            \u2387
    set right_black_arrow_glyph ''
    set right_arrow_glyph       ''
    set left_black_arrow_glyph  ''
    set left_arrow_glyph        ''
  end

  # Use prettier Nerd Fonts glyphs
  if [ "$theme_nerd_fonts" = "yes" ]
    set nonzero_exit_glyph "\uFAD5$last_status " # nf-mdi-alert_circle_outline
    set superuser_glyph    '\uF922' # nf-mdi-pound
    set bg_job_glyph       '\uF53E' # nf-mdi-arrange_send_backward
    set nonzero_exit_glyph "\uFAD5$last_status " # nf-mdi-alert_circle_outline

    set private_glyph    \uF840 ' ' # nf-mdi-lock_outline

    set branch_glyph     \uFB2B # nf-mdi-source_branch
    set detached_glyph   \uFC16 # nf-mdi-source_commit
    set tag_glyph        \uF9FB # nf-mdi-tag_outline

    set nix_glyph        \uF313 ' ' # nf-linux-nixos
    set virtualenv_glyph \uF81F ' '
    set ruby_glyph       \uE791 ' '
    set go_glyph         \uFCD1 ' '
    set node_glyph       \uF898 ' '

    set vagrant_running_glyph  \uF55C # ↑ 'running'
    set vagrant_poweroff_glyph \uF544 # ↓ 'poweroff'
    set vagrant_aborted_glyph  \uF655 # ✕ 'aborted'
    set vagrant_unknown_glyph  \uF521 # strange cases

    set git_dirty_glyph      \uF8EA '' # nf-mdi-pencil
    set git_staged_glyph     \uFD16 '' # nf-mdi-content_save_outline
    set git_stashed_glyph    \uF8D2 '' # nf-mdi-package_down
    set git_untracked_glyph  \uF7D6 '' # nf-mdi-help_circle

    set git_ahead_glyph      \uF642 # nf-mdi-chevron_up
    set git_behind_glyph     \uF63F # nf-mdi-chevron_down

    set git_plus_glyph       \uF85F # nf-mdi-menu_up
    set git_minus_glyph      \uF85C # nf-mdi-menu_down
    set git_plus_minus_glyph \uFA4E # nf-mdi-unfold_more_horizontal
  end

  # Avoid ambiguous glyphs
  if [ "$theme_avoid_ambiguous_glyphs" = "yes" ]
    set git_untracked_glyph '...'
  end
end
