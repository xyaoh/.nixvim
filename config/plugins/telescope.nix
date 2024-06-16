{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader>fb" = "buffers";
      "<leader>fh" = "help_tags";
    };

    settings = {
      defaults = {
        # TODO
      };
    };

    extensions.fzf-native.enable = true;
  };
}
