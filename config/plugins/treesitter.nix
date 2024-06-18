{
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
      };
    };

    treesitter-context = {
      enable = true;
      settings = {
        max_lines = 4;
      };
    };

    # highlight languages inside strings for nix files
    hmts.enable = true;
  };

  highlightOverride = {
    TSDefinition.link = "Visual";
  };
}
