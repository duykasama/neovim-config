require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "java", "javascript", "typescript", "bash", "c_sharp", "css", "dart", "dockerfile", "gitignore", "gitcommit", "gpg", "groovy", "html", "kotlin", "proto", "rust", "scss", "slint", "sql", "ssh_config", "terraform", "lua", "vim", "vimdoc", "query" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
