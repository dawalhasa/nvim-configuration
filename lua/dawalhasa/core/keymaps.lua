vim.g.mapleader = ","

local keymap = vim.keymap -- for concisenes

-- Map jj key as escaped 
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj"})
keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open lazyvim file explore"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "No highlight key in normal mode"})
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizentally"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Exit split window"})

-- New tab open and close
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close the current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current tab in a new buffer"})

