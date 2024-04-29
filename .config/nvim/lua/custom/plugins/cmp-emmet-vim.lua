return {
    'dcampos/cmp-emmet-vim',
    config = function()
      require('cmp').setup {
        sources = {
          {
            name = 'emmet_vim',
            option = { filetypes = { 'html', 'xml', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'heex', 'tsx', 'jsx', 'svelte' } },
          },
        },
      }
    end,
  }
