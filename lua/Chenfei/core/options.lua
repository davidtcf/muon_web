local opt = vim.opt --for concisenss

--set line number--
opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search setting
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

--set wrap text
opt.wrap = true
