{
  config,
  lib,
  ...
}: let
  l = lib // builtins;
  t = l.types;

in {
  imports = [
    ../derivation-common/implementation.nix
  ];

  config.final.derivation-func = lib.mkDefault builtins.derivation;

  config.final.derivation.name = config.name;
}
