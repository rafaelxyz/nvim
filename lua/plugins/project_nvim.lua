vim.g.nvim_tree_respect_buf_cwd = 1

require("project_nvim").setup {

}

require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
})
