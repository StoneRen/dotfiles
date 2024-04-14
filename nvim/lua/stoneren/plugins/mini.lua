return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require("mini.pairs").setup()
    require("mini.comment").setup()
    require("mini.cursorword").setup()
    require("mini.jump2d").setup()
  end,
}
