{
  plugins.barbar = {
    enable = true;

    settings = {
      animation = false;
      auto_hide = 1;
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