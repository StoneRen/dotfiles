return {
  {
    "echasnovski/mini.nvim",
    enabled = false,
    version = "*",
    config = function()
      require("mini.comment").setup({
        mappings = {
          comment = "gc",
          comment_line = "gcc",
          textobject = "gc",
        },
      })
    end,
  },
}
