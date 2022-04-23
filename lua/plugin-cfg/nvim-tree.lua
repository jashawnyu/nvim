-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'

local nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows= 1
}
vim.api.nvim_set_var("nvim_tree_icons", nvim_tree_icons)
vim.api.nvim_set_var("nvim_tree_show_icons", nvim_tree_show_icons)

local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup({
--  open_on_setup = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- 隐藏 .文件 和 node_modules 文件夹
--  filters = {
--    dotfiles = true,
--    custom = { "node_modules" },
--  },

  view = {
    width = 30,
    side = "left",
    hide_root_folder = false,
    auto_resize = true,
    mappings = {
      custom_only = true,
      list = list_keys,
    },
    number = false,
    relativenumber = false,
    -- 显示图标
   -- signcolumn = "yes",
  },
  actions = {
    open_file = {
      -- 首次打开大小适配
      resize_window = true,
      -- 打开文件时关闭 tree
      quit_on_open = false,
    },
  },
  -- wsl install -g wsl-open
  -- https://github.com/4U6U57/wsl-open/
  system_open = {
    -- mac
    cmd = "open",
  },
})
