{
  inputs = {
    cheetah.url = "https://flakehub.com/f/aleksrutins/cheetah/0.2.3.tar.gz";
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
