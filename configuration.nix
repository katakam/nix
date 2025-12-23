{ config, pkgs, ... }:

{
  imports = [
    ./core/boot-limine.nix
    ./core/kernel-zen4-amd.nix
    ./core/networking.nix
    ./core/containers-base.nix
    ./core/containers-runtime.nix

    ./filesystem/btrfs-layout.nix
    ./filesystem/snapshots.nix

    ./hardware/um790-pro.nix
    ./hardware/amdgpu.nix
    ./hardware/thunderbolt.nix

    ./desktop/login-manager.nix
    ./desktop/hyprland.nix
    ./desktop/niri.nix
    ./desktop/waybar.nix
    ./desktop/notifications.nix

    ./theming/fonts.nix
    ./theming/catppuccin.nix

    ./dev/tmux.nix
    ./dev/neovim.nix
    ./dev/doom-emacs.nix
    ./dev/vscodium.nix

    ./users/vk.nix
  ];

  system.stateVersion = "24.05";
}
