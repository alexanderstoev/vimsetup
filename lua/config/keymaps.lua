-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- exit vim
vim.keymap.set('n', '<leader>qq', ':qa!<CR>', { desc = 'Force quit all buffers' })
vim.keymap.set('n', '<leader>q', function()
  if vim.fn.empty(vim.fn.getbufinfo({ bufmodified = 1 })) == 1 then
    vim.cmd('qa')
  else
    print('Unsaved changes exist!')
  end
end, { desc = 'Quit if no unsaved changes' })
