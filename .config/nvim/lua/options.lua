require "nvchad.options"

vim.filetype.add({
  extension = {
    jack = "java",
  },
})

require('nvim-treesitter.configs').setup {
  ensure_installed = { "java" }, -- Ensure Java is installed
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- Add more configurations if needed
}

vim.opt.relativenumber = true

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
