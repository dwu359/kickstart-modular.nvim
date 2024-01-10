-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- vim: ts=2 sts=2 sw=2 et

local opt = vim.opt

opt.confirm = true -- Confirm to save changes before exiting modified buffer

opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.concealcursor = "nc" --Sets the modes in which text in the cursor line can also be concealed.

opt.cursorline = true -- Enable highlighting of the current line

opt.tabstop = 2 --Number of spaces that a <Tab> in the file counts for
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2 -- Size of an indent
opt.shiftround = true -- Round indent
opt.softtabstop = -1 -- When 'softtabstop' is negative, the value of 'shiftwidth' is used.

opt.sidescrolloff = 8 -- Columns of context
opt.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor.

opt.shortmess:append({c = true, W = true, I = true }) -- don't give |ins-completion-menu| messages.

opt.spelllang = { "en" } -- Enable spell checking for english--

-- Use visual bell (no beeping)
opt.visualbell = true

-- Enable folding
opt.foldmethod = "expr"

opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- diable folding at startup
opt.foldenable = false

-- set the number of screen lines above which a fold is displayed closed
opt.foldminlines = 5
