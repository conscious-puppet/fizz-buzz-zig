{ inputs, ... }:
{
  perSystem = { config, self', pkgs, lib, ... }: {
    devShells.default = pkgs.mkShell {
      name = "zig-hello-world-shell";
      inputsFrom = [
        config.treefmt.build.devShell
      ];
      packages = with pkgs; [
        just
        nixd
        zig
        zls
      ];
    };
  };
}
