{
  inputs = {
    cheetah.url = "github:aleksrutins/cheetah";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, utils, cheetah }:
    let config = {
      always_hydrate = true;
    };
    in utils.lib.eachDefaultSystem (system: {
      packages.default = (cheetah.buildSite.${system} ./. {
        name = "site";
        inherit config;
      });

      devShells.default = (cheetah.createDevShell.${system} { inherit config; });
    });
}
