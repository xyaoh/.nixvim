{
  plugins.barbar = {
    enable = true;

    settings = {
      animation = false;
      icons = {
        separator = {
          left = "|";
          right = "|";
          separator_at_end = false;
        };
      };
    };

    keymaps = {
      next.key = "<TAB>";
      previous.key = "<S-TAB>";
      close.key = "<C-C>";
    };
  };
}
