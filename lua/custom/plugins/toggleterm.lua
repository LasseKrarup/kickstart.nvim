if (vim.fn.has 'win32' or vim.fn.has 'win64') and not vim.fn.has 'wsl' then
  local powershell_options = {
    shell = vim.fn.executable 'pwsh' == 1 and 'pwsh' or 'powershell',
    shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;',
    shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait',
    shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode',
    shellquote = '',
    shellxquote = '',
  }

  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
end

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new { cmd = 'lazygit', direction = 'float' }

      function _lazygit_toggle()
        lazygit:toggle()
      end

      -- vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Open Lazy[G]it' })
    end,
  },
}
