{ pkgs, ... }:

{
  services.greetd.enable = true;

  services.greetd.settings.default_session = {
    command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember";
    user = "greeter";
  };

  environment.systemPackages = [ pkgs.greetd.tuigreet ];
}
