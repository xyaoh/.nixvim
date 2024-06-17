{
  plugins.barbar = {
    enable = true;

    settings = {
      animation = false;
      tabpages = false;
      icons = {
        button = "";
        modified.button = "·";
        separator = {
          left = "";
          right = "";
          separator_at_end = false;
        };
        inactive.separator = {
          left = "";
          right = "";
        };
      };
    };

    keymaps = {
      pick = {
        key = "<TAB>";
        options.silent = true;
      };
      pickDelete = {
        key = "<C-TAB>";
        action = "<Cmd>BufferPickDelete 1<CR>";
        options.silent = true;
      };
    };
  };

  highlightOverride = {
    BufferCurrentMod.link = "BufferCurrent";
    BufferAlternateMod.link = "BufferAlternate";
    BufferVisibleMod.link = "BufferVisible";
    BufferInactiveMod.link = "BufferInactive";
  };
}
