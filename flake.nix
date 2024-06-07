{
  inputs = {
    idr2nix.url = "git+https://git.sr.ht/~thatonelutenist/idr2nix?ref=trunk";
    idr2nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  description = "Example Idris2 Package";

  outputs = { self, nixpkgs, idr2nix }:
    idr2nix.idris.single {
      packageName = "example";
      sources = builtins.fromJSON (builtins.readFile ./sources.json);
      ipkg = "package.ipkg";
      src = ./.;
      idris2api = true;
    };
}
