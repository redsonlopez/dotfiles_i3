local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
  { 
    "nvim-treesitter/nvim-treesitter",
    build = { ":TSUpdate" },
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  ---------------------------------------------------------
  -- Temas
  ---------------------------------------------------------
  --{
    --"loctvl842/monokai-pro.nvim"
  --},

  ---------------------------------------------------------
  -- Busca ultra-rápida de Arquivos e Funções
  ---------------------------------------------------------
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  ---------------------------------------------------------
  -- Gerenciador de Ferramentas Isolado
  ---------------------------------------------------------
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  ---------------------------------------------------------
  -- Formatação de Código (Auto-format ao salvar)
  ---------------------------------------------------------
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Usa o ruff para organizar imports e formatar o código Python
        python = { "ruff_organize_imports", "ruff_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  ---------------------------------------------------------
  -- Linting (Avisos de erros na lateral da linha)
  ---------------------------------------------------------
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        python = { "ruff" },
      }
      
      -- Executa o linter automaticamente ao salvar ou ler o arquivo
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end
  },
})

