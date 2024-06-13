return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
		require("mason").setup()
    end,
}

-- mason-lspconfig
--
--nvim-lspconfig
--
-- cmp
--
-- conform
--
