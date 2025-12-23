{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vscodium
    rustc
    cargo
    zig
    jdk
  ];
}
