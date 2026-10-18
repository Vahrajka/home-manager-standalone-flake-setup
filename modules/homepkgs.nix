{ pkgs, ... }:

{
  home.packages = with pkgs; [
    quickshell
    noctalia-shell
    neovide
    fortune
    readest
    cbonsai
    matugen
    bitwarden-desktop
    alacritty
  ];
}
