local vo = vim.opt

vo.clipboard:append("unnamedplus")
-- line number
vo.relativenumber = true
vo.number = true

-- tab
vo.tabstop = 2
vo.shiftwidth = 2
vo.expandtab = true
vo.autoindent = true

-- avoid wrap
vo.wrap = true

-- cursor line
vo.cursorline = true

-- new window
vo.splitright = true
vo.splitbelow = true

-- looks
vo.termguicolors = true
vo.signcolumn = "yes"

-- set your theme
vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
-- vim.cmd[[set background=light]]
vim.cmd[[colorscheme PaperColor]]





