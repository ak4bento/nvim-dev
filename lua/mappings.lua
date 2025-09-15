require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
vim.keymap.del("n", "<C-n>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Mapping untuk Vim Visual Multi
vim.g.VM_maps = {
  ["Find Under"] = "<C-n>",
  ["Find Subword Under"] = "<C-n>",
}

-- Jika ingin mengganti mapping default NvChad untuk <C-n>
map("n", "<leader>q", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- stay in visual mode after indent
map("v", "<", "<gv", { desc = "Indent left and stay in visual mode" })
map("v", ">", ">gv", { desc = "Indent right and stay in visual mode" })

