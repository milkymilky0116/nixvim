{ config
, lib
, ...
}: {
  imports = [
    ./plug/colorscheme/colorscheme.nix
    ./plug/telescope/telescope.nix
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