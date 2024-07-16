{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader>ff" = {
        action = "git_files";
        options = {
          desc = "Find git project files";
        };
      };
      "<leader>gf" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };

      "<leader>uC" = {
        action = "colorscheme";
        options = {
            desc = "Colorscheme preview";
        };
      };
    };
  };
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
