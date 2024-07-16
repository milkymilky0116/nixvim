{
    plugins.none-ls = {
        enable = true;
        enableLspFormat = true;
        settings = {
            updateInInsert = false;
       };
       sources = {
        code_actions = {
            gomodifytags.enable = true;
            impl.enable = true;
        };
        formatting = {
            goimports.enable = true;
        };
    };

    };
    keymaps = [
    {
      mode = [ "n" "v" ];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}