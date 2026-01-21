return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- 启动时立即加载 (load on startup)
  config = function()
    require("transparent").setup({
      -- 额外需要透明的组 (extra groups that need transparency)
      extra_groups = {
        "NormalFloat", -- 浮动窗口
        "NvimTreeNormal", -- 如果你用 nvim-tree
        "NeoTreeNormal", -- 如果你用 neo-tree (LazyVim 默认使用这个)
      },
    })
    -- 自动开启透明
    vim.cmd("TransparentEnable")
  end,
}
