require 'core.options' -- Load general options
require 'core.keymaps' -- Load general keymaps
require 'core.snippets' -- Custom code snippets

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require('lazy').setup {
  require 'plugins.neotree',
  require 'plugins.colortheme',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocompletion',
  require 'plugins.none-ls',
  require 'plugins.gitsigns',
  require 'plugins.alpha',
  require 'plugins.indent-blankline',
  require 'plugins.misc',
  require 'plugins.comment',
}

-- Custom background for Neo-tree
--Normal = { fg = colors.fg, bg = colors.bg },
vim.api.nvim_set_hl(0, 'Normal', { bg = '#252935' })
vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = '#20242f' })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = '#20242f' })

-- Default line numbers
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#afb0b3' })

-- Highlight the current line number
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FF4500', bg = '#1E1E1E', bold = true })
-- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = '#1e1e2e' })
-- vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { bg = '#282a36' })
-- vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = '#1e1e2e' })
-- vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg = '#1e1e2e', fg = '#1e1e2e' })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
