return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      respect_buf_cwd = true,
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        git_ignored = false,
      },
    }
    vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFocus<CR>', { desc = '[E]xplorer [F]ocus' })
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle [E]xplorer' })
    vim.keymap.set('n', '<leader>eff', '<cmd>NvimTreeFindFile<CR>', { desc = 'Toggle [E]xplorer' })
  end,
}
