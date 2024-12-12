vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.rs",
  callback = function()
    vim.cmd("silent !cargo fmt")
    vim.cmd("edit")
  end,
})
