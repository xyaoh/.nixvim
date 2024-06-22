{
  plugins = {
    copilot-vim = {
      enable = true;
      settings = {
        enabled = false; # disable inline suggestions
      };
    };

    copilot-chat = {
      enable = true;
      settings = {
        show_help = false;
        highlight_selection = false;
        prompts = {
          # override callback diagnostics created by copilot
          Review = {
            prompt = "/COPILOT_REVIEW Review the selected code.";
            callback = "function() end";
          };
        };
      };
    };
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>aic";
      action = "<cmd>CopilotChat<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>aie";
      action = "<cmd>CopilotChatExplain<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>air";
      action = "<cmd>CopilotChatReview<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>aif";
      action = "<cmd>CopilotChatFix<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>aio";
      action = "<cmd>CopilotChatOptimize<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>aid";
      action = "<cmd>CopilotChatDocs<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>ait";
      action = "<cmd>CopilotChatTests<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
