{
  plugins = {
    cmp-nvim-lsp.enable = true;

    cmp = {
      enable = true;
      settings = {
        completion.completeopt = "menu,menuone";
        view.docs.auto_open = false;

        sources = [
          { name = "nvim_lsp"; }
        ];

        mapping = {
          "<Tab>" = "cmp.mapping.confirm({ select = true })";
          "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };
      };
    };
  };
}
