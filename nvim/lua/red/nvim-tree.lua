require("nvim-tree").setup({
  git = {
    enable = true,
  },
  renderer = {
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
})

local devicons = require("nvim-web-devicons")

local function get_icon(filename, bufnr)
  local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")

  local ext = filename:match("%.([^.]+)$") or ""

  local icon = devicons.get_icon(filename, ext, { default = true })

  return icon or ""
end

function _G.my_tabline()
  local buffers = vim.api.nvim_list_bufs()
  local current = vim.api.nvim_get_current_buf()

  local real_buffers = {}
  local has_nvimtree = false

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) then
      local ft = vim.api.nvim_buf_get_option(buf, "filetype")
      local name = vim.api.nvim_buf_get_name(buf)

      if ft == "NvimTree" then
        has_nvimtree = true
      elseif name ~= "" then
        table.insert(real_buffers, buf)
      end
    end
  end

  if #real_buffers <= 1 and not has_nvimtree then
    return "%#TabLineFill# "
  end

  local s = ""

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) then
      local ft = vim.api.nvim_buf_get_option(buf, "filetype")
      local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ":t")

      local icon
      if ft == "NvimTree" then
        icon = "󰙅"
        name = "NvimTree"
      else
        icon = get_icon(name, buf)
      end

      if name ~= "" then
        if buf == current then
          s = s .. "%#TabLineSel# " .. icon .. " " .. name .. " %*"
        else
          s = s .. "%#TabLine# " .. icon .. " " .. name .. " %*"
        end
      end
    end
  end

  return s .. "%#TabLineFill#"
end

vim.opt.tabline = "%!v:lua.my_tabline()"

