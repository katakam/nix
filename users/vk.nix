{ ... }:

{
  users.users.vk = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
    ];
  };

  security.sudo.wheelNeedsPassword = false;
}
