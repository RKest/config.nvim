local M = { -- :help telescope.setup()
  defaults = {
    mappings = {
      i = {
        ['<C-Down>'] = require('telescope.actions').cycle_history_next,
        ['<C-Up>'] = require('telescope.actions').cycle_history_prev,
      },
    },
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown(),
    },
  },
}
return M
