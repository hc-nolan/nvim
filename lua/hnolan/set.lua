local opt = vim.opt
opt.nu = true             -- line numbers
opt.relativenumber = true -- relative line numbers

-- indenting
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.shiftround = true -- Round indent to multiple of shiftwidth
opt.expandtab = true
opt.smartindent = true
opt.expandtab = true -- Use spaces instead of tabs
opt.listchars = "tab: ,multispace:|   ,eol:󰌑" -- Characters to show for tabs, spaces, and end of line

opt.wrap = true -- line wrapping

-- custom dir for undotree
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.hlsearch = false
opt.incsearch = true


opt.updatetime = 50

opt.colorcolumn = "80"

vim.g.mapleader = " "

opt.signcolumn = "yes:1" -- show marks in gutter

opt.winborder = "rounded"

opt.signcolumn = "yes:1" -- Always show sign column
opt.termguicolors = true -- Enable true colors
opt.ignorecase = true -- Ignore case in search
opt.swapfile = false -- Disable swap files
opt.autoindent = true -- Enable auto indentation
opt.list = true -- Show whitespace characters
opt.numberwidth = 2 -- Width of the line number column
opt.cursorline = true -- Highlight the current line
opt.scrolloff = 8 -- Keep 8 lines above and below the cursor
opt.inccommand = "nosplit" -- Shows the effects of a command incrementally in the buffer
opt.completeopt = { "menuone", "popup", "noinsert" } -- Options for completion menu

vim.cmd.filetype("plugin indent on") -- Enable filetype detection, plugins, and indentation

