-- Enable FZF within LSP

require('lspfuzzy').setup {
  methods = 'all',        -- either 'all' or a list of LSP methods (see below)
  fzf_options = {},       -- options passed to FZF
  fzf_modifier = ':~:.',  -- format FZF entries, see |filename-modifiers|
  fzf_trim = true,        -- trim FZF entries
}
