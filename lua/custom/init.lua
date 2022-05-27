-- example file i.e lua/custom/init.lua

-- require("my autocmds file") or ust declare them here
--
-- This is an example init file , its supposed to be placed in /lua/custom/

-- This is where your custom modules and plugins go.
-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!


-- Tabs ------------------------------------------------------------------------------------------------

vim.opt.showtabline = 2                         -- always show tabs
vim.opt.expandtab = true                        -- convert tabs to spaces

-- Numbers -----------------------------------------------------------------------------------------------

vim.opt.relativenumber = true                   -- set relative numbered lines
-- vim.opt.numberwidth = 2                         -- set number column width to 2  {default 4}

-- Various ----------------------------------------------------------------------------------------------

-- vim.opt.syntax = "enable"
vim.opt.autoread = true
-- vim.opt.spell = false                           -- built-in spell checking
vim.opt.hlsearch = false                        -- highlight all matches on previous search pattern
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
-- vim.opt.cmdheight = 1                           -- space in the neovim command line for displaying messages
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
-- vim.opt.ignorecase = true                       -- ignore case in search patterns
-- vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
-- vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.smartcase = true                        -- smart case
-- vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.g.copilot_enable = false                    -- disable copilot by default
vim.opt.mouse = "c"                             -- disable mouse

vim.g.code_action_menu_show_details = false
vim.g.code_action_menu_show_diff = true

-- MAPPINGS
local map = nvchad.map
local opts = { noremap = true, silent = true }
local optsmap = { noremap = false, expr = true, silent = true }
local term_opts = { silent = true }

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Close_all_but = function ()
   vim.cmd "BufferLineCloseLeft"
   vim.cmd "BufferLineCloseRight"
end

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Buffers Move to previous/next
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<leader>bc', ':Bdelete<CR>', opts)
map('n', '<leader>bp', ':BufferLinePick<CR>', opts)
map('n', '<leader>bc', ':BufferLinePickClose<CR>', opts)
map('n', '<leader>ba', ':lua Close_all_but()<CR>', opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Normal --

-- use jj to exit insert mode
map("i", "jj", "<ESC>", opts)

-- scrolling
map("n", "<S-j>", "<C-e>", opts)
map("n", "<S-k>", "<C-y>", opts)

-- Resize with arrows
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Navigater camelcase
vim.g.camelcasemotion_key = '<leader>'

-- telescope
map("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>r", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>c", "<cmd>Telescope grep_string<cr>", opts)  -- Search string under cursor
map("n", "<leader>br", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>h", "<cmd>Telescope help_tags<cr>", opts)
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
map("n", "<leader>gbc", "<cmd>Telescope git_bcommits<cr>", opts)
map("n", "<leader>gs", "<cmd>Telescope git_stash<cr>", opts)
map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts)
map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", opts)
map("n", "<leader>ld", "<cmd>Telescope diagnostics<cr>", opts)
map("n", "<leader>ls", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
map("n", "<leader>y", "<cmd>Telescope registers<cr>", opts)
map("n", "<leader>j", "<cmd>Telescope jumplist<cr>", opts)

-- Code actions
map("n", "<leader>s", "<cmd>CodeActionMenu<cr>", opts)

-- terminal
map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<ESC>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

-- NvimTree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opts)

--gitsigns
map('n', '[g', '<CMD>:Gitsigns next_hunk<CR>', opts)
map('n', ']g', '<CMD>:Gitsigns previous_hunk<CR>', opts)
map('n', '<leader>gp', '<CMD>:Gitsigns preview_hunk<CR>', opts)
map('n', '<leader>gl', '<CMD>:Gitsigns blame_line<CR>', opts)
map('n', '<leader>gX', '<CMD>:Gitsigns reset_hunk<CR>', opts)

-- twilight
map('n', 'tw', ':Twilight<CR>', opts)


-- map to add '-' until the 80th column. Great for comments
map('n', '<leader>-', ':set ri<cr>80A-<esc>81<bar>d$0:set nori<CR>', opts)

-- marks
map("n", "<leader>m", "<cmd>Telescope marks<cr>", opts)
map("n", "<leader>k", "<cmd>BookmarksListAll<cr>", opts)

-- search
map("n", "f", "<cmd>Pounce<cr>", opts)
-- NOTE: the 4th argument in the map function can be a table i.e options but its most likely un-needed so dont worry about it

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough
