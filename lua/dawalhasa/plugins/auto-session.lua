return{
	"rmagatti/auto-session",
	config = function()
	local auto_session = require("auto-session")

	auto_session.setup({
		auto_restore_enabled = false,
		auto_session_suppress_dirs = { "~/", "~/Documents", "~/Downloads", "~/Desktop"},
	})
		local keymap = vim.keymap
		 
	keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", {desc = "Restore last auto saved working session" })
	keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {desc = "Saved the working session" })

	end,
}
