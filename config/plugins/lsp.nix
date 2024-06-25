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
      # python
      ruff.enable = true;
      pylyzer.enable = false;
      pylsp = {
        enable = true;
        settings = {
          plugins = {
            # ruff already provide those features
            autopep8.enabled = false;
            flake8.enabled = false;
            mccabe.enabled = false;
            preload.enabled = false;
            pycodestyle.enabled = false;
            pydocstyle.enabled = false;
            pyflakes.enabled = false;
            pylint.enabled = false;
            ruff.enabled = false;
            yapf.enabled = false;
          };
        };
      };
      # rust
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      # haskell
      hls.enable = true;
    };
  };
}
