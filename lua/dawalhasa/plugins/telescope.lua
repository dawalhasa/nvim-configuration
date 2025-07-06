return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function ()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
		  defaults = {
		  path_display = { "smart" },
		  mappings = {
			  i = {
				  ["<C-k>"] = actions.move_selection_previous,
				  ["<C-j>"] = actions.move_selection_next,
				  ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			  }
		  }
		  },
		})
		telescope.load_extension("fzf")

	local keymap = vim.keymap 

	keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {desc = "Find file" })
	keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {desc = "Find old files" })
	keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {desc = "Grep string in current file" })
	keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", {desc = "Find string & Grep that string in current file" })

	-- key to remember is <C-c> will close the fuzzy finder
	
	end,
}
