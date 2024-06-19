{
  autoCmd = [
    {
      desc = "highlight for a short duration when yanking text";
      event = "TextYankPost";
      group = "highlight_yank";
      callback.__raw = "function() vim.highlight.on_yank{higroup='Visual'} end";
    }
    {
      desc = "open help in vertical split";
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }
  ];

  autoGroups = {
    highlight_yank = {
      clear = true;
    };
  };
}
