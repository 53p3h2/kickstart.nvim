return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  {
    'vague2k/vague.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require('vague').setup {
        -- optional configuration here
      }
      vim.cmd.colorscheme 'vague'
    end,
  },
  {
    'folke/tokyonight.nvim',
    ---@diagnostic disable-next-line: missing-fields
    config = function()
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
}
