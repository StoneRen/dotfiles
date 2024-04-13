return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { "BufReadPre", "BufNewFile" },
  version = "*",
  keys = {
    { "<leader>to", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
    { "<leader>tp", "<Cmd>BufferLinePick<CR>", desc = "Pick buffer" },
  },
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
    },
  },
}
