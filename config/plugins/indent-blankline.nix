{
  plugins = {
    indent-blankline = {
      enable = true;
    };
  };

  extraConfigLua = '' 
    require("ibl").setup {
      indent = {
        char = "╎",
        smart_indent_cap = true,
      },
      scope = {
        enabled = true,
        highlight = { "statement" },
        show_start = false,
        show_end = false,
      },
    }
  '';
}
