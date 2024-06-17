{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  
  keymaps = [
    # open file explorer with "<leader>-"
    {
      mode = "n";
      key = "<leader>-";
      action = "<cmd>e.<CR>";
      options = {
        silent = true;
      };
    }
    # clear highlight with "<leader><esc>"
    {
      mode = "n";
      key = "<leader><esc>";
      action = "<cmd>noh<CR>";
      options = {
        silent = true;
      };
    }
    # resize windows with arrows
    {
      mode = "n";
      key = "<C-Down>";
      action = "<cmd>resize +2<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = "<cmd>resize -2<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
