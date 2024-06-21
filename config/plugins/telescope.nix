{ pkgs , ... }:

{
  extraPackages = with pkgs; [
    ripgrep
    fd
  ];

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
        scroll_strategy = "limit";
        layout_strategy = "horizontal";
        layout_config = {
          height = 0.7;
          width = 0.9;
          preview_width = 0.6;
        };

        border = true;
        borderchars = [ " " " " " " " " " " " " " " " " ];

        dynamic_preview_title = true;
        results_title = false;
        prompt_title = false;

        prompt_prefix = " ";
        selection_caret = " ";
        entry_prefix = " ";
      };
    };

    extensions = {
      fzf-native.enable = true;
    };
  };

  highlightOverride = {
    TelescopeNormal.link = "NormalFloat";
    TelescopeBorder.link = "FloatBorder";
    TelescopeTitle.link = "Function";
    TelescopePromptPrefix.link = "String";
    TelescopeSelection.link = "IncSearch";
    TelescopeMatching.link = "Function";
    TelescopePreviewLine.link = "Visual";
    TelescopePreviewMatch.link = "Visual";
  };
}
