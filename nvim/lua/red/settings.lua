local o = vim.opt

-- Clipboard
o.clipboard = { "unnamed", "unnamedplus" }

-- Colors on any terminal
o.termguicolors = true

-- Tabline (Tittle)
o.showtabline = 2
--o.tabline = "%#TabLineSel# "

-- Indentation and tabulation
o.autoindent = true
o.smartindent = true
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2

-- Tab characters
--o.list = true
--o.listchars = "tab:»·,trail:·"

-- Number + Fold
o.number = true
o.cursorline = true
o.numberwidth = 4
o.foldcolumn = "2"

-- Max line width
--o.textwidth = 79
--o.formatoptions = o.formatoptions + "t"

-- Remove tildes at the end of the file
o.fillchars = { fold = " ", eob = " " }

-- Statusline
o.laststatus = 3
o.statusline =
  "%#StatusLine# %m%r%h%w %=%Y - %p%% of the file - line %l,%v of %L "

