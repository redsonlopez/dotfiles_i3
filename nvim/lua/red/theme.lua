local api  = vim.api

-- Colors Cheme
vim.cmd.colorscheme("monokai-pro-spectrum")

api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "*", "NvimTree" },
  callback = function()
    -- Tabline - Tittle
    api.nvim_set_hl(0, "TabLineFill", { bg = "#1e222a" })
    api.nvim_set_hl(0, "TabLineSel", { fg = "#1e222a", bg = "#ffaa00" })
    api.nvim_set_hl(0, "TabLine", { fg = "#888888", bg = "#1e222a" })
    -- Nvim Tree
    api.nvim_set_hl(0, "NvimTreeNormal",      { bg = "#1e222a" })
    api.nvim_set_hl(0, "NvimTreeNormalNC",    { bg = "#1e222a" })
    api.nvim_set_hl(0, "NvimTreeWinSeparator",{ bg = "#1e222a", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeEndOfBuffer",  { bg = "#1e222a", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeVertSplit",    { bg = "#1e222a", fg = "#777777" })
    api.nvim_set_hl(0, "NvimTreeCursorLine",   { bg = "#292e39" })
    api.nvim_set_hl(0, "NvimTreeSignColumn",   { bg = "#1e222a" })
    -- Number + Fold
    api.nvim_set_hl(0, "LineNr",          { fg = "#545454" })
    api.nvim_set_hl(0, "FoldColumn",      { bg = "#1e222a" })
    api.nvim_set_hl(0, "CursorLine",      { bg = "#292e39" })
    api.nvim_set_hl(0, "CursorLineNr",    { fg = "#888888" })
    api.nvim_set_hl(0, "CursorLineFold",  { bg = "#1e222a" })
    -- BackGround
    api.nvim_set_hl(0, "Normal",      { bg = "#1e222a" })
    api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
    api.nvim_set_hl(0, "FloatBorder", { bg = "#1e222a" })
    api.nvim_set_hl(0, "Pmenu",       { bg = "#333333" })
    -- BackGround Foot
    api.nvim_set_hl(0, "EndOfBuffer", { bg = "#1e222a", fg = "#1e222a" })
    api.nvim_set_hl(0, "NonText",     { bg = "#1e222a", fg = "#1e222a" })
    api.nvim_set_hl(0, "Whitespace",  { bg = "#1e222a", fg = "#1e222a" })
    -- Statusline
    api.nvim_set_hl(0, "StatusLine", {
      bg = "#1e222a",
      fg = "#888888",
      bold = true,
      italic = true,
    })
  end,
})
