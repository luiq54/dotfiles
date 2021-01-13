require'colorizer'.setup()

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

local lualine = require('lualine')
lualine.status()
lualine.theme = 'onedark'

require('telescope').setup{
	defaults = {
		file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	}
}

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1 
vim.g.nvim_tree_icons = {
      default= '',
      symlink= '',
      git= {
        unstaged= "✗",
        staged= "✓",
        unmerged= "",
        renamed= "➜",
        untracked= "★"
        },
      folder= {
        default= "",
        open= "",
        symlink= "",
        }
      }

require'bufferline'.setup()


-- local lspconfig = require('lspconfig')

-- lspconfig.jdtls.setup{}
-- lspconfig.gdscript.setup{}
-- lspconfig.rust_analyzer.setup{
--   on_attach=require'completion'.on_attach
-- }

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

