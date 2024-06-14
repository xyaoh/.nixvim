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
    };

    # highlight languages inside strings for nix files
    hmts.enable = true;
  };
}
