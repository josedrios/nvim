-- Tweaks to Kanso theme (no bg and set telescope colors)
local function set_transparency()
    vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
            vim.cmd([[
                hi Normal guibg=NONE ctermbg=NONE
		hi NormalFloat guibg=#14171d ctermbg=NONE
		hi SignColumn guibg=NONE ctermbg=NONE
		hi LineNr guibg=NONE ctermbg=NONE
            ]])

            vim.cmd([[
	      hi TelescopeNormal guibg=#14171d ctermbg=NONE
	      hi TelescopeBorder guibg=#14171d ctermbg=NONE
	      hi TelescopePromptNormal guibg=#14171d ctermbg=NONE
	      hi TelescopePromptBorder guibg=#14171d ctermbg=NONE
	      hi TelescopeResultsNormal guibg=#14171d ctermbg=NONE
	      hi TelescopeResultsBorder guibg=#14171d ctermbg=NONE
	    ]])
        end,
    })
end

return {
    {
        "webhooked/kanso.nvim",
        config = function()
            vim.cmd.colorscheme("kanso")
            set_transparency()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "kanso",
        }
    }
}
