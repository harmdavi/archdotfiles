return {
  'jalvesaq/dict.nvim',
  config = function()
    local dict = require('dict')
    
    dict.setup({
      -- Ensure this file actually exists at /usr/share/dict/american-english
      dict = 'american-english',
      dict_dir = '/usr/share/dict',
      cache_dir = vim.fn.expand('~/.cache/dict.nvim'),
    })

    vim.keymap.set('n', '<Leader>d', function()
      dict.lookup()
    end, { desc = 'Dictionary lookup' })
  end,
}
