-- vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2c2e34', fg = '#ffffff' })
return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }
}
-- return {
--     {
--         "nvim-treesitter/nvim-treesitter",
--         -- If you want to keep using the old config style, uncomment the next line:
--         -- branch = "master",
--         build = ":TSUpdate",
--         config = function()
--             -- Modern setup style for the 'main' branch
--             local configs = require("nvim-treesitter") -- Legacy; for 'main' use require("nvim-treesitter")
--             configs.setup({
--                 ensure_installed = { "python", "go", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
--                 sync_install = false,
--                 highlight = { enable = true },
--                 indent = { enable = true },
--             })
--         end,
--     },
--     {
--         "nvim-treesitter/nvim-treesitter-context",
--         dependencies = { "nvim-treesitter/nvim-treesitter" },
--         config = function()
--             require("treesitter-context").setup({
--                 enable = true,  -- Enable this plugin
--                 multiwindow = false,  -- Disable multiwindow support if not needed
--                 max_lines = 0,  -- No limit on lines to span
--                 min_window_height = 0,  -- Minimum height for context
--                 line_numbers = true,  -- Show line numbers
--                 multiline_threshold = 20,  -- Max lines for a single context
--                 trim_scope = "outer",       -- Which context lines to discard if max_lines exceeded
--                 mode = "cursor",            -- Line used to calculate context
--             })
--         end,
--     },
-- }
