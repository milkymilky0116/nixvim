{pkgs, ... }: {
    plugins.treesitter = {
        enable = true;
        folding = false;
        nixvimInjections = true;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
}