{ inputs, ... }:

{
  imports = [
    ./modules/homepkgs.nix
    ];

  home.file = {
    ".config/matugen".source = ./matugen;
    ".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
    ".config/niri".source = ./niri;
    ".config/waypaper".source = ./waypaper;
    ".config/nvim".source = ./nvim;
    };


  home.username = "zayd";
  home.homeDirectory = "/home/zayd";
  home.stateVersion = "25.11"; # Please read the comment before changing.
     home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
      "\\\${HOME}/.steam/root/compatibilitytools.d";
  };
  targets.genericLinux.enable = true;
  targets.genericLinux.gpu.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  services.batsignal.enable = true;

}
