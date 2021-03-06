# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "generic-pool-2.2.0" = {
      name = "generic-pool";
      packageName = "generic-pool";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/generic-pool/-/generic-pool-2.2.0.tgz";
        sha1 = "8b465c1a7588ea9dd2bb133bda0bb66bfef8a63e";
      };
    };
  };
in
{
  "statsd-https://github.com/ONLYOFFICE/statsd/archive/v0.8.1.tar.gz" = nodeEnv.buildNodePackage {
    name = "statsd";
    packageName = "statsd";
    version = "0.8.0";
    src = fetchurl {
      name = "statsd-0.8.0.tar.gz";
      url = https://codeload.github.com/ONLYOFFICE/statsd/tar.gz/v0.8.1;
      sha256 = "c92d2d313825ddf9da4114c5e151a22c393a3c54d30e0946895d5ee22f768f33";
    };
    dependencies = [
      sources."generic-pool-2.2.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Network daemon for the collection and aggregation of realtime application metrics";
      homepage = https://github.com/etsy/statsd;
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
}