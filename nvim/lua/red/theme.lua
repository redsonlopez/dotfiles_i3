local api  = vim.api

-- Colors Cheme
vim.cmd.colorscheme("monokai-pro-spectrum")

api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "*", "NvimTree" },
  callback = function()
    -- Tabline - Tittle
    api.nvim_set_hl(0, "TabLineFill", { bg = "#222222" })
    api.nvim_set_hl(0, "TabLineSel", { fg = "#222222", bg = "#ffaa00" })
    api.nvim_set_hl(0, "TabLine", { fg = "#888888", bg = "#222222" })
    -- Nvim Tree
    api.nvim_set_hl(0, "NvimTreeNormal",      { bg = "#222222" })
    api.nvim_set_hl(0, "NvimTreeNormalNC",    { bg = "#222222" })
    api.nvim_set_hl(0, "NvimTreeWinSeparator",{ bg = "#222222", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeEndOfBuffer",  { bg = "#222222", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeVertSplit",    { bg = "#222222", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeCursorLine",   { bg = "#2e2e2e" })
    api.nvim_set_hl(0, "NvimTreeSignColumn",   { bg = "#222222" })
    -- Number + Fold
    api.nvim_set_hl(0, "LineNr",          { fg = "#545454" })
    api.nvim_set_hl(0, "FoldColumn",      { bg = "#222222" })
    api.nvim_set_hl(0, "CursorLine",      { bg = "#2e2e2e" })
    api.nvim_set_hl(0, "CursorLineNr",    { fg = "#888888" })
    api.nvim_set_hl(0, "CursorLineFold",  { bg = "#222222" })
    -- BackGround
    api.nvim_set_hl(0, "Normal",      { bg = "#222222" })
    api.nvim_set_hl(0, "NormalFloat", { bg = "#222222" })
    api.nvim_set_hl(0, "FloatBorder", { bg = "#222222" })
    api.nvim_set_hl(0, "Pmenu",       { bg = "#333333" })
    -- BackGround Foot
    api.nvim_set_hl(0, "EndOfBuffer", { bg = "#222222", fg = "#222222" })
    api.nvim_set_hl(0, "NonText",     { bg = "#222222", fg = "#222222" })
    api.nvim_set_hl(0, "Whitespace",  { bg = "#222222", fg = "#222222" })
    -- Statusline
    api.nvim_set_hl(0, "StatusLine", {
      bg = "#222222",
      fg = "#888888",
      bold = true,
      italic = true,
    })
  end,
})
