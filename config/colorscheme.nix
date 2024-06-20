{ self, pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [ 
    # https://github.com/sainnhe/gruvbox-material
    gruvbox-material
  ];

  globals = {
    gruvbox_material_background = "medium";
    gruvbox_material_foreground = "material";
    gruvbox_material_disable_italic_comment = 0;
    gruvbox_material_enable_bold = 1;
    gruvbox_material_enable_italic = 1;
    gruvbox_material_visual = "reverse";
    gruvbox_material_menu_selection_background = "orange";
    gruvbox_material_sign_column_background = "none";
    gruvbox_material_spell_foreground = "colored";
    gruvbox_material_ui_contrast = "low";
    gruvbox_material_show_eob = 1;
    gruvbox_material_float_style = "dim";
    gruvbox_material_diagnostic_text_highlight = 0;
    gruvbox_material_diagnostic_line_highlight = 0;
    gruvbox_material_diagnostic_virtual_text = "colored";
    gruvbox_material_current_word = "underline";
  };

  colorscheme = "gruvbox-material";

  highlightOverride = {
    NormalFloat = {
      fg = "#ddc7a1";
      bg = "#1d2021";
    };
    FloatBorder = {
      fg = "#1d2021";
      bg = "#1d2021";
    };
  };
}
