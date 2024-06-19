{
  plugins.lsp = {
    enable = true;

    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>k" = "goto_prev";
        "<leader>j" = "goto_next";
      };
      lspBuf = {
        gd = "definition";
        gr = "references";
        gt = "type_definition";
        gi = "implementation";
        K = "hover";
        "<F2>" = "rename";
      };
    };

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
}
