{ pkgs , ... }:

let
  colors = {
    fg0 = "#ddc7a1";
    fg1 = "#928374";
    bg0 = "#282828";
    bg1 = "#212323";
    bg2 = "#1d2021";
    accent0 = "#ea6962";
    accent2 = "#d8a657";
  };
in
{
  extraPackages = with pkgs; [
    ripgrep
    fd
  ];

  plugins.bufferline = {
    enable = true;
    separatorStyle = "slope";

    showCloseIcon = false;
    showBufferCloseIcons = false;
    modifiedIcon = "·";
    leftTruncMarker = "↼";
    rightTruncMarker = "⇁";

    highlights = {
      fill = {
        fg = colors.bg0;
        bg = colors.bg0;
      };

      bufferSelected = {
        fg = colors.fg0;
        bg = colors.bg2;
        bold = true;
        italic = true;
      };
      closeButtonSelected = {
        fg = colors.fg0;
        bg = colors.bg2;
        bold = true;
      };
      separatorSelected = {
        fg = colors.bg0;
        bg = colors.bg2;
        bold = false;
      };
      modifiedSelected = {
        fg = colors.accent2;
        bg = colors.bg2;
        bold = true;
      };
      pickSelected = {
        fg = colors.accent2;
        bg = colors.bg2;
        bold = true;
        italic = true;
      };
      bufferVisible = {
        fg = colors.fg0;
        bg = colors.bg1;
        bold = false;
        italic = false;
      };
      closeButtonVisible = {
        fg = colors.fg0;
        bg = colors.bg1;
        bold = true;
      };
      separatorVisible = {
        fg = colors.bg0;
        bg = colors.bg1;
        bold = false;
      };
      modifiedVisible = {
        fg = colors.accent2;
        bg = colors.bg1;
        bold = true;
      };
      pickVisible = {
        fg = colors.accent2;
        bg = colors.bg1;
        bold = true;
        italic = true;
      };
      background = {
        fg = colors.fg1;
        bg = colors.bg0;
        bold = false;
        italic = false;
      };
      closeButton = {
        fg = colors.fg1;
        bg = colors.bg0;
        bold = true;
      };
      separator = {
        fg = colors.bg0;
        bg = colors.bg0;
        bold = false;
      };
      modified = {
        fg = colors.accent2;
        bg = colors.bg0;
        bold = true;
      };
      pick = {
        fg = colors.accent0;
        bg = colors.bg0;
        bold = true;
        italic = true;
      };

      tab = {
        fg = colors.fg1;
        bg = colors.bg0;
      };
      tabSeparator = {
        fg = colors.bg0;
        bg = colors.bg0;
      };
      tabSelected = {
        fg = colors.fg0;
        bg = colors.bg2;
      };
      tabSeparatorSelected = {
        fg = colors.bg0;
        bg = colors.bg2;
      };

      trunkMarker = {
        fg = colors.fg0;
        bg = colors.bg0;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<TAB>";
      action = "<cmd>BufferLinePick<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-TAB>";
      action = "<cmd>BufferLinePickClose<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
