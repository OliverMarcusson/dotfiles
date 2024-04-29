return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = true,
    -- insert_at_start = true,
  },
  config = function()
    require('barbar').setup {}
    local map = vim.api.nvim_set_keymap
    map('n', '<leader>tp', '<cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = '[T]ab [P]revious' })
    map('n', '<leader>tn', '<cmd>BufferNext<CR>', { noremap = true, silent = true, desc = '[T]ab [N]ext' })
    map('n', '<leader>tx', '<cmd>BufferClose<CR>', { noremap = true, silent = true, desc = '[T]ab [X] (Close)' })
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
