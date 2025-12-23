{ ... }:

{
  services.snapper.configs.root = {
    SUBVOLUME = "/";
    TIMELINE_CREATE = true;
    TIMELINE_CLEANUP = true;
    NUMBER_LIMIT = 10;
  };
}
