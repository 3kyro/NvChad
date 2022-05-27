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
-- Don't use a single keymap twice

--- MAPPINGS ----
M.mappings = require "custom.mappings"
-- non plugin
-- M.mappings = {
   -- custom = {}, -- custom user mappings

   -- misc = {
   --    cheatsheet = "<leader>ch",
   --    close_buffer = "<leader>x",
   --    copy_whole_file = "<C-a>", -- copy all contents of current buffer
   --    line_number_toggle = "", -- toggle line number
   --    update_nvchad = "<leader>uu",
   --    new_buffer = "<S-t>",
   --    new_tab = "<C-t>b",
   --    save_file = "<C-s>", -- save file using :w
   -- },
   --
   -- -- navigation in insert mode, only if enabled in options
   --
   -- insert_nav = {
   --    backward = "<C-h>",
   --    end_of_line = "<C-e>",
   --    forward = "<C-l>",
   --    next_line = "<C-k>",
   --    prev_line = "<C-j>",
   --    beginning_of_line = "<C-a>",
   -- },
   --
   -- -- better window movement
   -- window_nav = {
   --    moveLeft = "<C-h>",
   --    moveRight = "<C-l>",
   --    moveUp = "<C-k>",
   --    moveDown = "<C-j>",
   -- },
   --
   -- -- terminal related mappings
   -- terminal = {
   --    -- multiple mappings can be given for esc_termmode, esc_hide_termmode
   --
   --    -- get out of terminal mode
   --    esc_termmode = { "jj" },
   --
   --    -- get out of terminal mode and hide it
   --    esc_hide_termmode = { "JK" },
   --    -- show & recover hidden terminal buffers in a telescope picker
   --    pick_term = "",
   --
   --    -- spawn terminals
   --    new_horizontal = "",
   --    new_vertical = "",
   --    new_window = "",
   -- },
-- }

-- plugins related mappings
-- To disable a mapping, equate the variable to "" or false or nil in chadrc
-- M.mappings.plugins = {
--    -- map to <ESC> with no lag
--    better_escape = { -- <ESC> will still work
--       esc_insertmode = { "jj" }, -- multiple mappings allowed
--    },
--
--    lspconfig = {
--       declaration = "gD",
--       definition = "gd",
--       hover = "gh",
--       implementation = "gi",
--       signature_help = "gk",
--       add_workspace_folder = "",
--       remove_workspace_folder = "",
--       list_workspace_folders = "",
--       type_definition = "",
--       rename = "<leader>rn",
--       code_action = "",
--       references = "",
--       float_diagnostics = "gl",
--       goto_prev = "[d",
--       goto_next = "]d",
--       set_loclist = "",
--       formatting = "",
--    },
--
--    nvimtree = {
--       toggle = "<leader>n",
--       focus = "<leader>e",
--    },
--
--    telescope = {
--       buffers = "",
--       find_files = "<leader>f",
--       find_hiddenfiles = "<leader>a",
--       git_commits = "<leader>gc",
--       git_status = "<leader>gs",
--       help_tags = "",
--       live_grep = "<leader>r",
--       oldfiles = "",
--       themes = "", -- NvChad theme picker
--    },
-- }

return M
