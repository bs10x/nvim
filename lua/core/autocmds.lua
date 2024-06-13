local autocmd = vim.api.nvim_create_autocmd

autocmd({ "CmdlineEnter", "RecordingEnter" }, {
  callback = function()
    vim.opt.cmdheight = 1
  end,
})

autocmd({ "CmdlineLeave", "RecordingLeave" }, {
  callback = function()
    vim.opt.cmdheight = 0
  end,
})







----- WIP ------------------------------------------

-- dont list quickfix buffers
-- autocmd("FileType", {
--   pattern = "qf",
--   callback = function()
--     vim.opt_local.buflisted = false
--   end,
-- })
