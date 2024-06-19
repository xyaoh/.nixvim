{
  plugins.alpha = {
    enable = true;
    layout = [
      # -- HEADER --
      {
        type = "padding";
        val = 4;
      }
      {
        type = "text";
        val = [
          "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];
        opts = {
          hl = "Type";
          position = "center";
        };
      }
      {
        type = "padding";
        val = 4;
      }
      # -- NEWFILE --
      {
        type = "button";
        val = "[e] Edit new file";
        on_press.__raw = "function() vim.cmd[[ene]] end";
        opts = {
          keymap = [
            "n"
            "e"
            "<CMD>ene<CR>"
            {noremap = true; silent = true; nowait = true;}
          ];
          position = "center";
          cursor = 1;
          width = 34;
          shortcut = "";
          align_shortcut = "right";
          hl = [ [ "Function" 0 3 ] ];
        };
      }
      {
        type = "padding";
        val = 1;
      }
      # -- EDIT --
      {
        type = "button";
        val = "[.] Open current directory";
        on_press.__raw = "function() vim.cmd[[e.]] end";
        opts = {
          keymap = [
            "n"
            "."
            "<CMD>e.<CR>"
            {noremap = true; silent = true; nowait = true;}
          ];
          position = "center";
          cursor = 1;
          width = 34;
          shortcut = "";
          align_shortcut = "right";
          hl = [ [ "Function" 0 3 ] ];
        };
      }
      {
        type = "padding";
        val = 1;
      }
      # -- QUIT ---
      {
        type = "button";
        val = "[q] Quit Neovim";
        on_press.__raw = "function() vim.cmd[[qa]] end";
        opts = {
          keymap = [
            "n"
            "q"
            "<CMD>qa<CR>"
            {noremap = true; silent = true; nowait = true;}
          ];
          position = "center";
          cursor = 1;
          width = 34;
          shortcut = "";
          align_shortcut = "right";
          hl = [ [ "Function" 0 3 ] ];
        };
      }
      # -- FOOTER --
      {
        type = "padding";
        val = 22;
      }
      {
        type = "button";
        val = "https://github.com/xyaoh/.nixvim";
        on_press.__raw = "function() vim.cmd[[yank]] end";
        opts = {
          position = "center";
          cursor = 0;
        };
      }
    ];
  };
}
