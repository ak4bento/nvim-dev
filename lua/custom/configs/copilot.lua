vim.g.copilot_no_tab_map = true  -- Disable default <Tab> mapping

-- vim.api.nvim_set_keymap("i", "<C-tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<M-S-'>", "copilot#Next()", { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<M-S-/>", "copilot#Dismiss()", { silent = true, expr = true })

vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<Tab>")', { expr = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<C-\\>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-g>", "<Plug>(copilot-next)", {})
vim.api.nvim_set_keymap("i", "<C-f>", "<Plug>(copilot-dismiss)", {})

-- Warna hijau untuk saran Copilot
vim.cmd([[highlight CopilotSuggestion guifg=#7ee6a1 guibg=NONE ctermfg=10 blend=70]])


