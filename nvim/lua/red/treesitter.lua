require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "bash",
    "json",
    "yaml",
    "markdown",
  },
  highlight = {
    enable = true,
    -- Disable highlight in large files
    disable = function(_, buf)
      local max = 200 * 1024 -- 200 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max then
        return true
      end
    end,
  },
})

