return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    -- "ibhagwan/fzf-lua",              -- optional
    -- "echasnovski/mini.pick",         -- optional
  },
  config = function()
    -- open as a split
    vim.keymap.set('n', '<leader>g', '<cmd>Neogit cwd=%:p:h<CR>', { desc = 'Open [G]it' })
    require('neogit').setup {
      process_spinner = false,
    }
  end,
}
