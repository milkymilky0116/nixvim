{
    plugins.telescope = {
        enable = true;
        extensions = {
            file-browser = {
                enable = true;
            };
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
            action = "find_files";
            options = {
                desc = "Find Project Files";
            };
        };
    };
}