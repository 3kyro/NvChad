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

  -- We are just modifying lspconfig's packer definition table
  -- Put this in your custom plugins section i.e M.plugins field
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.lspconfig"
      end,
  },
}
