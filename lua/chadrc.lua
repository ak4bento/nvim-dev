-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "carbonfox",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}
M.ui = {
  cmp = {
    icons_left = false, -- only for non-atom styles!
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = false, -- will work for css lsp too
      icon = "󱓻",
    },
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  statusline = {
    enabled = true,
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
  "                                               ",
  "  ████████ ███  ███ ███ ████████ ███ ████ ███  ",
  "  ████████ ███  ███ ███ ████████ ███ ████ ███  ",
  "  ████ ███ ███  ███ ███ ███  ███ ███ ████ ███  ",
  "  ████ ███ ███  ███ ███ ███  ████████████████  ",
  "  ████████ ███  ███ ███ ███                    ",
  "       ███ ███  ███ ███ ████████ ███ ████ ███  ",
  "  ████ ███████  ███ ███ ███  ███ ███ ████      ",
  "  ████ ████████████ ███ ████████ ███ ████ ███  ",
  "  ████     ████████ ███ ████████ ███ ████ ███  ",
  "  ████ ███                       ███ ████ ███  ",
  "  ████     ████████ ████████████ ███ ████ ███  ",
  "  ████ ███ ███ ████          ███ ███ ████ ███  ",
  "  ████ █████████████████████████ ████████ ███  ",
  "  ████ ███                       ███           ",
  "  ████████ █████████████████████████ ████ ███  ",
  "  ████████ █████████████████████████ ████ ███  ",
  "                                     ████ ███  ",
  "  ████████████  ███ ████████████ ███ ████ ███  ",
  "  ████ ███ ███  ███          ███ ███ ████ ███  ",
  "  ████ █████████████████████████ ████████ ███  ",
  "  ████                           ███      ███  ",
  "  ██████████  ███████ ██████████████ ████████  ",
  "  ██████████  ███████ ██████████████ ████████  ",
  "                                               ",
  "           Created Art By @ak4bento            ",
  "                                               ",
  },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}

return M
