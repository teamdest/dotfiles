-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- use windows clipboard in WSL2:
local uname_output = vim.fn.system("uname -r")
if string.find(uname_output, "microsoft") then
  -- Create the augroup
  local augroup_id = vim.api.nvim_create_augroup("Yank", { clear = true })

  -- Create the autocmd for TextYankPost
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup_id,
    callback = function()
      -- Get the content of the default register (yanked text)
      local yanked_text = vim.fn.getreg('"')
      -- Pipe the yanked text to clip.exe
      vim.fn.system({ "/mnt/c/Windows/System32/clip.exe" }, yanked_text)
    end,
  })
end
