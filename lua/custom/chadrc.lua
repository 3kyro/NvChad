-- Just an example, supposed to be placed in /lua/custom/


-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:




local M = {}

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
   theme = "onedark",
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
