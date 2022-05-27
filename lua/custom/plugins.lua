return {
 --  -- My plugins here
  [ "tpope/vim-fugitive" ] = {},     -- Git integration
  [ "tpope/vim-eunuch" ] = {},       -- File manipulation
  [ "tpope/vim-commentary" ] = {},   -- easy comments
  ["tpope/vim-surround"] = {},     -- easy surround
  [ "tpope/vim-unimpaired" ] = {},   -- mostly for  'yob' to change theme
  [ "tpope/vim-sleuth" ] = {},       -- Automatically adjust shiftwidth and tabwidth based on current file
  [ "kamykn/spelunker.vim" ] = {},   -- spell checker
  [ "ntpeters/vim-better-whitespace" ] = {}, -- show trailing whitespace
  [ "axelf4/vim-strip-trailing-whitespace" ] = {}, -- remove trailing whitespace on save
  [ "bkad/CamelCaseMotion" ] = {},   -- move inside camelCaseNames
  [ "mg979/vim-visual-multi" ] = {}, -- multi line manipulation
  [ "numToStr/FTerm.nvim" ] = {},    -- floating terminal
 --
  --marks
  [ "chentau/marks.nvim" ] = {},
  [ "moll/vim-bbye" ] = {},

  -- Language specifics
  [ "rust-lang/rust.vim" ] = {},

  [ "weilbith/nvim-code-action-menu"] = {},

  -- telescope
  [ "AckslD/nvim-neoclip.lua" ] = {},

  -- search
  [ "rlane/pounce.nvim" ] = {},

  [ 'nvim-telescope/telescope-fzf-native.nvim' ] = { run = 'make' },

  ["folke/which-key.nvim"] = {
     config = function()
       require("which-key").setup {
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
         plugins = {
           spelling = {
             enabled = true,
           },
         },
       }
     end
     },
}
