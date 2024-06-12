{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # rust
        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        # haskell
        hls.enable = true;
        # python
        ruff.enable = true;
      };
    };
  };
}
