-- =========================================================
-- Modern LSP setup using vim.lsp.config (Neovim 0.11+)
-- No deprecated lspconfig.<server>.setup()
-- =========================================================

-- === Keymaps applied when LSP attaches to a buffer ===
local function lsp_keymaps(bufnr)
  local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
  end

  map("n", "gd", vim.lsp.buf.definition)
  map("n", "gD", vim.lsp.buf.declaration)
  map("n", "gi", vim.lsp.buf.implementation)
  map("n", "gr", vim.lsp.buf.references)
  map("n", "K", vim.lsp.buf.hover)
  map("n", "<leader>rn", vim.lsp.buf.rename)
  map("n", "<leader>ca", vim.lsp.buf.code_action)
  map("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end)
end

-- === Modern capabilities (completion engines read this) ===
local capabilities = vim.tbl_deep_extend(
  "force",
  {},
  vim.lsp.protocol.make_client_capabilities()
--  require("cmp_nvim_lsp").default_capabilities()  -- remove if não usar nvim-cmp
)

-- =========================================================
-- LSP SERVERS CONFIG
-- =========================================================

-- Lua (lua-language-server)
vim.lsp.config["lua_ls"] = {
  capabilities = capabilities,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      }
    }
  }
}

-- Python (pyright)
vim.lsp.config["pyright"] = {
  capabilities = capabilities
}

-- TypeScript / JavaScript (tsserver)
vim.lsp.config["tsserver"] = {
  capabilities = capabilities,
}

-- Bash
vim.lsp.config["bashls"] = {
  capabilities = capabilities,
}

-- JSON
vim.lsp.config["jsonls"] = {
  capabilities = capabilities,
}

-- YAML
vim.lsp.config["yamlls"] = {
  capabilities = capabilities,
}

-- HTML / CSS
vim.lsp.config["html"] = { capabilities = capabilities }
vim.lsp.config["cssls"] = { capabilities = capabilities }

-- =========================================================
-- Auto-start LSP on supported filetypes
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua", "python", "javascript", "typescript",
    "html", "css", "json", "yaml", "bash"
  },

  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    local server = ({
      lua       = "lua_ls",
      python    = "pyright",
      javascript = "tsserver",
      typescript = "tsserver",
      html      = "html",
      css       = "cssls",
      json      = "jsonls",
      yaml      = "yamlls",
      sh        = "bashls",
      bash      = "bashls",
    })[ft]

    if server and vim.lsp.config[server] then
      vim.lsp.start(vim.lsp.config[server])
    end
  end
})

-- =========================================================
-- Attach: garante keymaps por buffer
-- =========================================================
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    lsp_keymaps(args.buf)
  end
})

