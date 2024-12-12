-- Function to dynamically run code based on file type
local function run_code()
  local filetype = vim.bo.filetype
  local filepath = vim.fn.expand("%")
  if filetype == "python" then
    vim.cmd("!python3 " .. filepath)
  elseif filetype == "rust" then
    vim.cmd("!cargo run")
  else
    print("No run command defined for filetype: " .. filetype)
  end
end

return run_code
