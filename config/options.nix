{
  clipboard.register = "unnamedplus";

  opts = {
    number = true;
    relativenumber = true;

    splitbelow = true; # new window is put below the current one
    splitright = true; # new window is put right of the current one

    shiftwidth = 2;
    tabstop = 2;
    expandtab = true;

    ignorecase = true;
    smartcase = true; # override 'ignorecase' option if the search pattern
                      # contains upper case characters

    scrolloff = 10; # minimum number of screen lines to show around the cursor

    termguicolors = true; # enables 24-bit RGB color in the |TUI|

    swapfile = false; # disable the swap file
    undofile = true; # automatically save and restore undo history
  };
}
