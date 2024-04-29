return {
  'AckslD/nvim-neoclip.lua',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('neoclip').setup {}
    vim.keymap.set('n', '<leader>sy', '<cmd>Telescope neoclip<CR>', { desc = '[S]earch [Y]ank' })
  end,
}
