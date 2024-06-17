{
  autoCmd = [
    {
      desc = "highlight for a short duration when yanking text";
      event = "TextYankPost";
      group = "highlight_yank";
      callback.__raw = "function() vim.highlight.on_yank{higroup='Visual'} end";
    }
  ];

  autoGroups = {
    highlight_yank = {
      clear = true;
    };
  };
}
