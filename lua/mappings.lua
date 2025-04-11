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
