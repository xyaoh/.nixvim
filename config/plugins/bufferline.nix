let
  colors = {
    fg0 = "#ddc7a1";
    fg1 = "#504945";
    bg0 = "#1d2021";
    bg1 = "#141617";
    accent0 = "#ea6962";
    accent2 = "#d8a657";
  };
in
{
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
        fg = colors.bg1;
        bg = colors.bg1;
      };

      bufferSelected = {
        fg = colors.fg0;
        bg = colors.bg0;
        bold = true;
        italic = true;
      };
      duplicateSelected = {
        fg = colors.fg0;
        bg = colors.bg0;
        italic = true;
      };
      closeButtonSelected = {
        fg = colors.fg0;
        bg = colors.bg0;
        bold = true;
      };
      separatorSelected = {
        fg = colors.bg1;
        bg = colors.bg0;
        bold = false;
      };
      modifiedSelected = {
        fg = colors.accent2;
        bg = colors.bg0;
        bold = true;
      };
      pickSelected = {
        fg = colors.accent2;
        bg = colors.bg0;
        bold = true;
        italic = true;
      };
      bufferVisible = {
        fg = colors.fg0;
        bg = colors.bg1;
        bold = true;
        italic = true;
      };
      duplicateVisible = {
        fg = colors.fg0;
        bg = colors.bg1;
        italic = true;
      };
      closeButtonVisible = {
        fg = colors.fg0;
        bg = colors.bg1;
        bold = true;
      };
      separatorVisible = {
        fg = colors.bg1;
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
        fg = colors.fg0;
        bg = colors.bg1;
        bold = false;
        italic = true;
      };
      duplicate = {
        fg = colors.fg0;
        bg = colors.bg1;
        italic = true;
      };
      closeButton = {
        fg = colors.fg0;
        bg = colors.bg1;
        bold = true;
      };
      separator = {
        fg = colors.bg1;
        bg = colors.bg1;
        bold = false;
      };
      modified = {
        fg = colors.accent2;
        bg = colors.bg1;
        bold = true;
      };
      pick = {
        fg = colors.accent0;
        bg = colors.bg1;
        bold = true;
        italic = true;
      };

      tab = {
        fg = colors.fg1;
        bg = colors.bg1;
      };
      tabSeparator = {
        fg = colors.bg1;
        bg = colors.bg1;
      };
      tabSelected = {
        fg = colors.fg0;
        bg = colors.bg0;
      };
      tabSeparatorSelected = {
        fg = colors.bg1;
        bg = colors.bg0;
      };

      trunkMarker = {
        fg = colors.fg0;
        bg = colors.bg1;
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
