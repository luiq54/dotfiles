require'colorizer'.setup()

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

-- LSP STUFF
-- local lspconfig = require('lspconfig')

-- lspconfig.jdtls.setup{}
-- lspconfig.gdscript.setup{}


-- Some arbitrary servers
-- nvim_lsp.clangd.setup({
--   callbacks = lsp_status.extensions.clangd.setup(),
--   init_options = {
--     clangdFileStatus = true
--   },
--   on_attach = lsp_status.on_attach,
--   capabilities = lsp_status.capabilities
-- })

-- nvim_lsp.rust_analyzer.setup({
--   on_attach = lsp_status.on_attach,
--   capabilities = lsp_status.capabilities
-- })
