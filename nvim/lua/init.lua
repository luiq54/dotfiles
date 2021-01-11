require('defaults')
require('plugins')
require('plugin-setup')

vim.g.edge_style = 'neon'
vim.g.sonokai_enable_italic = 0
vim.g.sonokai_disable_italic_comment = 1
vim.cmd('colo edge')

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
