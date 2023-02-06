-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
-- chadrc

vim.g.camelcasemotion_key = "<Leader>"

local M = {}

M.mappings = require "custom.mappings"

M.options = {
   -- custom = {}
   -- general nvim/vim options , check :h optionname to know more about an option

   clipboard = "unnamedplus",
   cmdheight = 1,
   ruler = false,
   hidden = true,
   ignorecase = true,
   smartcase = true,
   mapleader = " ",
   mouse = "a",
   number = true,
   numberwidth = 2,
   relativenumber = true,
   expandtab = true,
   shiftwidth = 2,
   smartindent = true,
   tabstop = 8,
   timeoutlen = 400,
   updatetime = 250,
   undofile = true,
   fillchars = { eob = " " },
}

---- UI -----

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "everforest_light", "monekai" },
  theme = "chadtain", -- default theme
  transparency = false,
}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table

---- PLUGIN OPTIONS ----

M.plugins = {
   -- enable/disable plugins (false for disable)
   user = userPlugins,
   install = userPlugins,
   status = {
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.lspconfig", -- path of file containing setups of different lsps
      },
      nvimtree = {
         -- packerCompile required after changing lazy_load
         lazy_load = true,
         view = {
            hide_root_folder = false,
         },
      },
   },
}

return M
