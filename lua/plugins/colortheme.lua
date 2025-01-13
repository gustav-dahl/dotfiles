return {
  'Shatur/neovim-ayu',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    --vim.g.nord_contrast = true
    --vim.g.nord_borders = false
    --vim.g.nord_disable_background = true
    --vim.g.nord_italic = false
    --vim.g.nord_uniform_diff_background = true
    --vim.g.nord_bold = false

    -- Load the colorscheme
    require('ayu').setup {
      mirage = true,
      terminal = true, -- Set to `false` to let terminal manage its own colors.
      overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    }

    require('ayu').colorscheme()

    --require('nord').set()

    -- Toggle background transparency
    --local bg_transparent = true

    --local toggle_transparency = function()
    --bg_transparent = not bg_transparent
    --vim.g.nord_disable_background = bg_transparent
    --vim.cmd [[colorscheme nord]]
    --end

    --vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
