-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = require "configs.servers"
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.rust_analyzer.setup{
  on_attach = function (client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr})
  end,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
}

lspconfig.basedpyright.setup {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "off",
      }
    }
  }
}

lspconfig.bashls.setup {
  filetypes = { "bash", "sh", "zsh" },
  cmd = { "bash-language-server", "start" }
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
