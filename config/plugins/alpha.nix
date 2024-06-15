{
  plugins.alpha = {
    enable = true;
    layout = [
      # -- HEADER --
      {
        type = "padding";
        val = 3;
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
        val = 3;
      }
      # -- NEWFILE --
      {
        type = "button";
        val = "[e] New file";
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
          width = 30;
          shortcut = "";
          align_shortcut = "right";
          hl_shortcut = "Function";
          hl = [
            [
              "Function"
              0
              3
            ]
          ];
        };
      }
      # -- BOOKMARKS --
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        val = "_Bookmarks";
        opts = {
          hl = "Keyword";
          position = "center";
        };
      }
      {
        type = "group";
        val = [
          {
            type = "button";
            val = "[1] Nixvim";
            on_press.__raw = "function() vim.cmd[[e ~/.nixvim]] end";
            opts = {
              keymap = [
                "n"
                "1"
                "<CMD>e ~/.nixvim<CR>"
                {noremap = true; silent = true; nowait = true;}
              ];
              position = "center";
              cursor = 1;
              width = 30;
              shortcut = " ";
              align_shortcut = "right";
              hl = [
                [
                  "Function"
                    0
                    3
                ]
              ];
            };
          }
          {
            type = "button";
            val = "[2] Nixos";
            on_press.__raw = "function() vim.cmd[[e ~/.dotfiles/nixos]] end";
            opts = {
              keymap = [
                "n"
                "2"
                "<CMD>e ~/.dotfiles/nixos<CR>"
                {noremap = true; silent = true; nowait = true;}
              ];
              position = "center";
              cursor = 1;
              width = 30;
              shortcut = " ";
              align_shortcut = "right";
              hl = [
                [
                  "Function"
                    0
                    3
                ]
              ];
            };
          }
          {
            type = "button";
            val = "[3] Home-manager";
            on_press.__raw = "function() vim.cmd[[e ~/.dotfiles/home-manager]] end";
            opts = {
              keymap = [
                "n"
                "3"
                "<CMD>e ~/.dotfiles/home-manager<CR>"
                {noremap = true; silent = true; nowait = true;}
              ];
              position = "center";
              cursor = 1;
              width = 30;
              shortcut = " ";
              align_shortcut = "right";
              hl = [
                [
                  "Function"
                    0
                    3
                ]
              ];
            };
          }
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      # -- FOOTER --
      {
        type = "padding";
        val = 20;
      }
      {
        type = "button";
        val = "[q] Quit Nvim";
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
          width = 30;
          shortcut = "";
          align_shortcut = "right";
          hl_shortcut = "Keyword";
          hl = [
            [
              "Keyword"
                0
                3
            ]
          ];
        };
      }
      {
        type = "padding";
        val = 3;
      }
      {
        type = "text";
        val = "https://github.com/xyaoh/.nixvim";
        opts = {
          hl = "Type";
          position = "center";
        };
      }
    ];
  };
}
