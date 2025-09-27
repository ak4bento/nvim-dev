return {
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      local null_ls = require "null-ls"

      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.pint, -- Ganti php-cs-fixer dengan pint
        },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require "conform"

      conform.setup {
        formatters_by_ft = {
          lua = { "stylua" },
          java = { "google-java-format" },
          kotlin = { "ktlint" },
          bash = { "beautysh" },
          proto = { "buf" },
          rust = { "rustfmt" },
          yaml = { "yamlfix" },
          toml = { "taplo" },
          sh = { "shellcheck" },
          go = { "gofmt" },
          xml = { "xmllint" },
        },
      }

      vim.keymap.set({ "n", "v" }, "<leader>l", function()
        conform.format {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        }
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- Nvim Spectre
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
    config = function()
      local spectre = require("spectre")

      spectre.setup({
        highlight = {
          ui = "String",
          search = "DiffDelete",
          replace = "DiffAdd",
        },
        mapping = {
          ["toggle_line"] = {
            map = "dd",
            cmd = "toggle_line",
            desc = "Toggle item",
          },
          ["enter_file"] = {
            map = "<CR>",
            cmd = "open_file_replace",
            desc = "Open file to replace",
          },
        },
      })
      
      vim.keymap.set("n", "<leader>sr", "<cmd>lua require('spectre').toggle()<CR>", { desc = "Toggle Spectre" })
      vim.keymap.set("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { desc = "Search current word" })
      
    end,
  },
  -- Visual Multi
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
  },
  {
    "kndndrj/nvim-dbee",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup(--[[optional config]])
      vim.keymap.set("n", "<leader>de", "<cmd>lua require('dbee').open()<CR>", { desc = "Open dbee" })
      vim.keymap.set("n", "<leader>dc", "<cmd>lua require('dbee').close()<CR>", { desc = "Close dbee" })
      vim.keymap.set("n", "<leader>dt", "<cmd>lua require('dbee').toggle()<CR>", { desc = "Toggle dbee" })
      vim.keymap.set("n", "<leader>dt", "<cmd>lua require('dbee').execute(query)<CR>", { desc = "Execute Querydbee" })
      vim.keymap.set("n", "<leader>dt", "<cmd>lua require('dbee').store(format, output, opts)<CR>", { desc = "Store dbee" })

    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
