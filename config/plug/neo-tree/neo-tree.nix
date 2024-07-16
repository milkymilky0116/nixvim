{
    plugins.neotree = {
        enable = true;
        enableGitStatus = true;
        enableModifiedMarkers = true;
        keymaps = {
            "<leader>E" = {
                action = "<cmd>Neotree toggle<CR>";
                options = {
                    desc = "Toggle NeoTree";
                };
            };
        };
    };
}