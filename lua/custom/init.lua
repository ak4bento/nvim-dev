require "custom.configs.copilot"
require("noice").setup {
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    require("conform").format({ async = false, lsp_fallback = true })
  end,
})

-- local noice = require("noice")
--
-- -- Override LSP markdown rendering ke Noice
-- vim.lsp.util.convert_input_to_markdown_lines = noice.util.lsp.convert_input_to_markdown_lines
-- vim.lsp.util.stylize_markdown = noice.util.lsp.stylize_markdown
--
-- -- (Opsional) Tambahkan border pada floating window biar lebih rapi
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--   vim.lsp.handlers.hover, { border = "rounded" }
-- )
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
--   vim.lsp.handlers.signature_help, { border = "rounded" }
-- )
return {}
