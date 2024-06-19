let
  colors = {
    red = "#ea6962";
    green = "#a9b665";
    blue = "#7daea3";
    aqua = "#89b482";
    yellow = "#d8a657";
    orange = "#e78a4e";
    purple = "#d3869b";
    fg = "#ddc7a1";
    bg = "#282828";
  };
in
{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    theme = {
      normal = {
        a = {
          fg = colors.bg;
          bg = colors.yellow;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      insert = {
        a = {
          fg = colors.bg;
          bg = colors.green;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      visual = {
        a = {
          fg = colors.bg;
          bg = colors.red;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      replace = {
        a = {
          fg = colors.bg;
          bg = colors.purple;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      command = {
        a = {
          fg = colors.bg;
          bg = colors.aqua;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      terminal = {
        a = {
          fg = colors.bg;
          bg = colors.blue;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
      inactive = {
        a = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        b = {
          fg = colors.fg;
          bg = colors.bg;
          gui = "bold";
        };
        c = {
          fg = colors.fg;
          bg = colors.bg;
        };
      };
    };

    # +---------------------------------------+
    # | A | B | C                   X | Y | Z |
    # +---------------------------------------+

    sections = {
      lualine_a = [
        {
          name = "mode";
          padding = 2;
          separator = {
            left = " ";
            right = "";
          };
        }
      ];
      lualine_b = ["branch"];
      lualine_c = [
        {
          name = "filename";
          extraConfig = {
            path = 1;
            file_status = false;
          };
        }
        {
          name.__raw = "
            function()
              if vim.bo.modified then
                return '+'
              elseif vim.bo.modifiable == false or vim.bo.readonly == true then
                return '-'
              end
              return ''
            end
          ";
          padding = {
            left = 0;
            right = 1;
          };
          color = {
            fg = colors.yellow;
            gui = "bold";
          };
        }
        {
          name = "diff";
          color.gui = "bold";
          extraConfig = {
            diff_color = {
              added.fg = colors.green;
              modified.fg = colors.blue;
              removed.fg = colors.red;
            };
          };
        }
      ];
      lualine_x = ["filetype" "encoding"];
      lualine_y = [""];
      lualine_z = [
        {
          name = "%l:%c";
          padding = {
            left = 2;
            right = 1;
          };
          separator.left = "";
        }
        {
          name = "%L";
          padding = {
            left = 1;
            right = 2;
          };
          separator.right = " ";
        }
      ];
    };

    sectionSeparators = {
      left = "";
      right = "";
    };

    componentSeparators = {
      left = "";
      right = "";
    };
  };

  highlightOverride = {
    StatusLine.link = "Normal";
    StatusLineNC.link = "Normal";
  };
}
