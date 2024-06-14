{
  plugins.lualine = {
    enable = true;
    globalstatus = true;

    # +---------------------------------------+
    # | A | B | C                   X | Y | Z |
    # +---------------------------------------+

    sections = {
      lualine_a = ["mode"];
      lualine_b = ["branch"];
      lualine_c = ["filename" "diff"];
      lualine_x = ["encoding" "filetype"];
      lualine_y = [""];
      lualine_z = ["location"];
    };

    sectionSeparators = {
      left = " ";
      right = " ";
    };

    componentSeparators = {
      left = " ";
      right = " ";
    };
  };
}
