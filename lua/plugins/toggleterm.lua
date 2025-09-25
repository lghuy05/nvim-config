return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup()

    -- Run Python with <leader>r
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "python" },
      callback = function()
        vim.keymap.set("n", "<leader>rf", function()
          vim.cmd("TermExec cmd='python3 %'")
        end, { buffer = true })
      end,
    })

    -- Run C++ with <leader>r
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "cpp" },
      callback = function()
        vim.keymap.set("n", "<leader>rf", function()
          -- vim.cmd('TermExec cmd=\'g++ "%" -o "%:r" && "./%:r"\'')
          vim.cmd('TermExec cmd=\'g++ "%:p" -o "%:p:r" && "%:p:r"\'')
        end, { buffer = true })
      end,
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      callback = function()
        vim.keymap.set("n", "<leader>rf", function()
          vim.cmd("TermExec cmd='node %'")
        end, { buffer = true, desc = "Run JavaScript file" })
      end,
    })
  end,
}
