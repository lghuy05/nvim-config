return {
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      -- explicitly set sources instead of appending
      opts.sources = {
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
        { name = "luasnip" },
        {
          name = "emoji",
          keyword_pattern = [[:\w*]],
          option = { insert = true },
        },
      }
    end,
  },
}
