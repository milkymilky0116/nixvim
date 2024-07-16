{
    plugins.telescope = {
        enable = true;
        extenstions = {
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
            sorting_strategy = "asending";
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