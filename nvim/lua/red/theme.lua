local api  = vim.api

-- Colors Cheme
vim.cmd.colorscheme("monokai-pro-spectrum")

-- Theme Colors
local base_bg         = "#222222" -- Main Background
local base_bg_light   = "#2e2e2e" -- Cursor Line
local base_bg_popup   = "#333333" -- Popup / Pmenu
local fg_muted        = "#888888" -- Secondary Text
local fg_dim          = "#545454" -- Line Number
local fg_separator    = "#777777" -- Borders and Separators
local accent          = "#e5c07b" -- Selected Tab

api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "*", "NvimTree" },
  callback = function()
    -- Tabline - Tittle
    api.nvim_set_hl(0, "TabLineFill", { bg = base_bg })
    api.nvim_set_hl(0, "TabLineSel", { fg = base_bg, bg = accent })
    api.nvim_set_hl(0, "TabLine", { fg = fg_muted, bg = base_bg })
    -- Nvim Tree
    api.nvim_set_hl(0, "NvimTreeNormal",      { bg = base_bg })
    api.nvim_set_hl(0, "NvimTreeNormalNC",    { bg = base_bg })
    api.nvim_set_hl(0, "NvimTreeWinSeparator",{ bg = base_bg, fg = fg_separator })
    api.nvim_set_hl(0, "NvimTreeEndOfBuffer",  { bg = base_bg, fg = fg_separator })
    api.nvim_set_hl(0, "NvimTreeVertSplit",    { bg = base_bg, fg = fg_separator })
    api.nvim_set_hl(0, "NvimTreeCursorLine",   { bg = base_bg_light })
    api.nvim_set_hl(0, "NvimTreeSignColumn",   { bg = base_bg })
    -- Number + Fold
    api.nvim_set_hl(0, "LineNr",          { fg = fg_dim })
    api.nvim_set_hl(0, "FoldColumn",      { bg = base_bg })
    api.nvim_set_hl(0, "CursorLine",      { bg = base_bg_light })
    api.nvim_set_hl(0, "CursorLineNr",    { fg = fg_muted })
    api.nvim_set_hl(0, "CursorLineFold",  { bg = base_bg })
    -- BackGround
    api.nvim_set_hl(0, "Normal",      { bg = base_bg })
    api.nvim_set_hl(0, "NormalNC",    { bg = base_bg })
    api.nvim_set_hl(0, "NormalFloat", { bg = base_bg })
    api.nvim_set_hl(0, "FloatBorder", { bg = base_bg })
    api.nvim_set_hl(0, "Pmenu",       { bg = base_bg_popup })
    -- BackGround Foot
    api.nvim_set_hl(0, "EndOfBuffer", { bg = base_bg, fg = base_bg })
    api.nvim_set_hl(0, "NonText",     { bg = base_bg, fg = base_bg })
    api.nvim_set_hl(0, "Whitespace",  { bg = base_bg, fg = base_bg })
    -- Statusline
    api.nvim_set_hl(0, "StatusLine", {
      bg = base_bg,
      fg = fg_muted,
      bold = true,
      italic = true,
    })
  end,
})

