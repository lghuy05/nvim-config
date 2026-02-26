return {
  {
    "folke/flash.nvim",
    enabled = true,
    keys = {
      -- Don't define flash's 's' keymap at all
    },
    opts = {
      modes = {
        char = {
          enabled = false, -- disable for f/F/t/T
        },
        search = {
          enabled = false, -- also disable search mode to prevent any interference
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.cmdline = {
        view = "cmdline",
      }
    end,
  },
}
