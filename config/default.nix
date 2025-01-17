{ config
, lib
, ...
}: {
  imports = [
    ./keys.nix
    ./sets.nix
    ./highlights.nix
    ./plug/colorscheme/colorscheme.nix
    ./plug/telescope/telescope.nix
    ./plug/neo-tree/neo-tree.nix
    ./plug/treesitter/treesitter.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter-context.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/lsp-kind.nix
    ./plug/lsp/lsp-saga.nix
    ./plug/tmux/tmux-navigator.nix
    ./plug/cmp/cmp.nix
    ./plug/snippets/luasnip.nix
    ./plug/which-key/which-key.nix
    ./plug/ui/noice.nix
    ./plug/ui/lualine.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/precognition.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/rust/rustaceanvim.nix
];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "tokyonight";
      type = lib.types.enum [ "tokyonight" "decay" "edge-dark" "mountain" "tokyonight" "everforest" "everblush" "jellybeans" "aquarium" "gruvbox" ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "tokyonight";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
