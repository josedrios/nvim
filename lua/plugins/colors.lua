return {
    {
        "p00f/alabaster.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.opt.termguicolors = true
            vim.cmd.colorscheme("alabaster")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "alabaster",
        }
    }
}
