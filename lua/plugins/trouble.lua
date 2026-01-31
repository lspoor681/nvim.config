return {
    "folke/trouble.nvim",
    cmd = "Trouble",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}, -- use default settings
    keys = {
        { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>",              desc = "Trouble: Diagnostics" },
        { "<leader>tw", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Trouble: Workspace" },
        { "<leader>tl", "<cmd>Trouble loclist toggle<cr>",                  desc = "Trouble: Loclist" },
        { "<leader>tq", "<cmd>Trouble qflist toggle<cr>",                   desc = "Trouble: QuickFix" },
    }
}
