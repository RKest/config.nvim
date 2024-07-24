require 'config'

require 'keymap'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info

require 'install-lazy'

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  'github/copilot.vim', -- GitHub Copilot integration
  'tpope/vim-sleuth', -- Auto tabstop and shiftwidth
  'numToStr/Comment.nvim', -- Comment lines (gc)

  require 'plugins.gitsigns', -- Git signs on the gutter
  require 'plugins.which-key', -- Display keybindings

  require 'plugins.telescope.telescope', -- Fuzzy finder
  require 'plugins.lsp.lsp', -- Language Server Protocol
  require 'plugins.conform', -- Format code

  require 'plugins.nvim-cmp',

  require 'themes.tokyonight',

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  require 'plugins.mini', -- Couple 'mini' plugins
  require 'plugins.nvim-treesitter', -- TreeSitter

  require 'plugins.autopairs', -- Auto pairs
  require 'plugins.neo-tree', -- Neo tree
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
