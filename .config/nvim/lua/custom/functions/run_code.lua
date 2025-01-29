-- Function to dynamically run code based on file type
local function run_code()
  local filetype = vim.bo.filetype
  local filepath = vim.fn.expand("%")
  local filename = vim.fn.expand("%:t:r") -- Filename without extension

  if filetype == "python" then
    vim.cmd("!python3 " .. filepath)
  elseif filetype == "rust" then
    vim.cmd("!cargo run")
  elseif filetype == "c" then
    local output_file = filename .. ".out" -- Output binary file
    local compile_cmd = "gcc " .. filepath .. " -o " .. output_file
    local run_cmd = "./" .. output_file

    -- Compile and run
    local compile_status = os.execute(compile_cmd)
    if compile_status == 0 then
      vim.cmd("!" .. run_cmd)
    else
      print("Compilation failed.")
    end
  else
    print("No run command defined for filetype: " .. filetype)
  end
end

return run_code
