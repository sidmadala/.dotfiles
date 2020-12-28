-- Treesitter config

-- Setting highlight parsing
require("nvim-treesitter.configs").setup {
    ensure_installed = {"bash", "c", "cpp", "go", "json", "lua", "python", "rust", "toml", "typescript", "yaml"},
    highlight = {
      enable = true,		-- false will disable the whole extension
      disable = {},
    },
}
