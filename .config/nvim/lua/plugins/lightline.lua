-- Status bar for neovim

vim.g.lightline = {colorscheme="deus",
	active = {
		left = {{"mode", "paste"}, {"gitbranch", "readonly", "filename", "modified"}}
	},
	component_function={gitbranch="FugitiveHead"}
}
