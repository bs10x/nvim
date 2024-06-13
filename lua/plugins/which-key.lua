return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
  cmd = "WhichKey",
  
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function(_, opt)
    require("which-key").setup(opts)
  end,
}
