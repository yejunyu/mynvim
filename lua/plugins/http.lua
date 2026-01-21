return {
  {
    "mistweaverco/kulala.nvim",
    -- LazyVim 习惯在 keys 里直接绑定函数
    keys = {
      {
        "<leader>Rs",
        function()
          require("kulala").run()
        end,
        desc = "Send request",
      },
      {
        "<leader>Ra",
        function()
          require("kulala").run_all()
        end,
        desc = "Send all requests",
      },
      {
        "<leader>Rb",
        function()
          require("kulala").scratchpad()
        end,
        desc = "Open scratchpad",
      },
      {
        "<leader>Rt",
        function()
          require("kulala").toggle_view()
        end,
        desc = "Toggle body/headers",
      },
    },
    ft = { "http", "rest" },
    opts = {
      -- 你的自定义配置
      global_keymaps = false,
    },
  },
}
