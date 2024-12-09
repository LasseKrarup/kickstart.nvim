return {
  'mg979/vim-visual-multi',
  init = function()
    -- Disable a billion default mappings
    vim.g.VM_default_mappings = 0

    -- Enable mouse mappings
    vim.g.VM_mouse_mappings = 1

    -- Add custom mappings
    vim.g.VM_maps = {
      ['Exit'] = '<C-c>',
      ['Find Under'] = '<C-d>',
      ['Select Cursor Down'] = '<M-C-j>',
      ['Select Cursor Up'] = '<M-C-k>',
    }
  end,
}
