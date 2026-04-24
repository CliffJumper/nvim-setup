vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2c2e34', fg = '#ffffff' })
return {
    {
        "nvim-treesitter/nvim-treesitter",
        -- If you want to keep using the old config style, uncomment the next line:
        -- branch = "master",
        build = ":TSUpdate",
        config = function()
            -- Modern setup style for the 'main' branch
            local configs = require("nvim-treesitter") -- Legacy; for 'main' use require("nvim-treesitter")
            configs.setup({
                ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesitter-context").setup({
                enable = true,              -- Enable this plugin
                max_lines = 0,              -- How many lines the window should span
                min_window_height = 0,      -- Minimum editor window height to enable context
                lin_numbers = true,
                multiline_threshold = 20,   -- Max lines to show for a single context
                trim_scope = "outer",       -- Which context lines to discard if max_lines exceeded
                mode = "cursor",            -- Line used to calculate context
            })
        end,
    },
}
