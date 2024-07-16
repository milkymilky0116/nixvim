{pkgs, ... }: {
    plugins.treesitter = {
        enable = true;
        indent.enable = true;
        folding = false;
        nixvimInjections = true;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
}