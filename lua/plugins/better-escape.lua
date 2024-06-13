return {
  "max397574/better-escape.nvim",
  -- lazy = false,
  event = "VeryLazy",
  config = function()
      require("better_escape").setup()
  end,
}
