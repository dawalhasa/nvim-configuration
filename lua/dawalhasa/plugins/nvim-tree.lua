return{
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommanded from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		nvimtree.setup({
			view = {
				width = 30,
				relativenumber = false,
			},
			sort = {
    sorter = "case_sensitive",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },

		})
	local keymap = vim.keymap
	keymap.set("n", " ", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle Neovim tree" })
	keymap.set("n", "<leader> ", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle Neovim tree" })

	end


}
