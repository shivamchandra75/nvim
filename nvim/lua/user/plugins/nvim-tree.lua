return {
  "nvim-tree/nvim-tree.lua",
    pin = true,
  dependencies = "nvim-tree/nvim-web-devicons",
  enabled = vim.g.vscode == nil,

  config = function()
    local nvimtree = require("nvim-tree")
    -- recommended settings from nvim-tree documentation
    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        side = "right",
        adaptive_size = true,
      },
      renderer = {
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            modified = "●",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = " ",
              renamed = "➜",
              untracked = "󰓎 ",
              deleted = " ",
              ignored = "◌",
            },
          },
        },
      },
      update_focused_file = {
        enable = true,
        update_root = false,
        -- update_cwd = true,
        ignore_list = {},
      },
    })
  end

}
