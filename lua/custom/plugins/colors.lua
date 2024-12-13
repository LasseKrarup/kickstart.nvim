local colors = {}

table.insert(colors, {
  'folke/tokyonight.nvim',
  name = 'tokyonight',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    vim.cmd.colorscheme 'catppuccin-macchiato'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
})

table.insert(colors, { -- You can easily change to a different colorscheme.
  -- Change the name of the tablecheme plugin below, and then
  -- change the command in the config to whatever the name of that tablecheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
})

return colors
