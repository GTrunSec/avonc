# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "@types/cross-spawn-6.0.0" = {
      name = "_at_types_slash_cross-spawn";
      packageName = "@types/cross-spawn";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/cross-spawn/-/cross-spawn-6.0.0.tgz";
        sha512 = "evp2ZGsFw9YKprDbg8ySgC9NA15g3YgiI8ANkGmKKvvi0P2aDGYLPxQIC5qfeKNUOe3TjABVGuah6omPRpIYhg==";
      };
    };
    "@types/node-11.9.4" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "11.9.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-11.9.4.tgz";
        sha512 = "Zl8dGvAcEmadgs1tmSPcvwzO1YRsz38bVJQvH1RvRqSR9/5n61Q1ktcDL0ht3FXWR+ZpVmXVwN1LuH4Ax23NsA==";
      };
    };
    "cross-spawn-6.0.5" = {
      name = "cross-spawn";
      packageName = "cross-spawn";
      version = "6.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-6.0.5.tgz";
        sha512 = "eTVLrBSt7fjbDygz805pMnstIs2VTBNkRm0qxZd+M7A5XDdxVRWO5MxGBXZhjY4cqLYLdtrGqRf8mBPmzwSpWQ==";
      };
    };
    "isexe-2.0.0" = {
      name = "isexe";
      packageName = "isexe";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    };
    "json5-1.0.1" = {
      name = "json5";
      packageName = "json5";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json5/-/json5-1.0.1.tgz";
        sha512 = "aKS4WQjPenRxiQsC93MNfjx+nbF4PAdYzmd/1JIj8HYzqfbu86beTuNgXDzPknWk0n0uARlyewZo4s++ES36Ow==";
      };
    };
    "minimist-1.2.0" = {
      name = "minimist";
      packageName = "minimist";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    };
    "nice-try-1.0.5" = {
      name = "nice-try";
      packageName = "nice-try";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/nice-try/-/nice-try-1.0.5.tgz";
        sha512 = "1nh45deeb5olNY7eX82BkPO7SSxR5SSYJiPTrTdFUVYwAl8CKMA5N9PjTYkHiRjisVcxcQ1HXdLhx2qxxJzLNQ==";
      };
    };
    "path-key-2.0.1" = {
      name = "path-key";
      packageName = "path-key";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    };
    "semver-5.6.0" = {
      name = "semver";
      packageName = "semver";
      version = "5.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.6.0.tgz";
        sha512 = "RS9R6R35NYgQn++fkDWaOmqGoj4Ek9gGs+DPxNUZKuwE183xjJroKvyo1IzVFeXvUrvmALy6FWD5xrdJT25gMg==";
      };
    };
    "shebang-command-1.2.0" = {
      name = "shebang-command";
      packageName = "shebang-command";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    };
    "shebang-regex-1.0.0" = {
      name = "shebang-regex";
      packageName = "shebang-regex";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    };
    "which-1.3.1" = {
      name = "which";
      packageName = "which";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-1.3.1.tgz";
        sha512 = "HxJdYWq1MTIQbJ3nw0cqssHoTNU267KlrDuGZ1WYlxDStUtKUhOaJmh112/TZmHxxUfuJqPXSOm7tDyas0OSIQ==";
      };
    };
  };
in
{
  "@expo/spawn-async-^1.3.0" = nodeEnv.buildNodePackage {
    name = "_at_expo_slash_spawn-async";
    packageName = "@expo/spawn-async";
    version = "1.4.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/@expo/spawn-async/-/spawn-async-1.4.0.tgz";
      sha512 = "jE9zSZ14eOfKxXs+WJZofweKtsAeuQiOpntsb+zp8Ti9/wk+9ZjKkffdld7UfANr8asmzuJYnEoVyL+hMy3SWw==";
    };
    dependencies = [
      sources."@types/cross-spawn-6.0.0"
      sources."@types/node-11.9.4"
      sources."cross-spawn-6.0.5"
      sources."isexe-2.0.0"
      sources."nice-try-1.0.5"
      sources."path-key-2.0.1"
      sources."semver-5.6.0"
      sources."shebang-command-1.2.0"
      sources."shebang-regex-1.0.0"
      sources."which-1.3.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "A Promise-based interface into processes created by child_process.spawn";
      homepage = "https://github.com/expo/spawn-async#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
  "bytes-^3.0.0" = nodeEnv.buildNodePackage {
    name = "bytes";
    packageName = "bytes";
    version = "3.1.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/bytes/-/bytes-3.1.0.tgz";
      sha512 = "zauLjrfCG+xvoyaqLoV8bLVXXNGC4JqlxFCutSDWA6fJrTo2ZuvLYTqZ7aHBLZSMOopbzwv8f+wZcVzfVTI2Dg==";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "Utility to parse a string bytes to bytes and vice-versa";
      homepage = "https://github.com/visionmedia/bytes.js#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
  "co-^4.6.0" = nodeEnv.buildNodePackage {
    name = "co";
    packageName = "co";
    version = "4.6.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/co/-/co-4.6.0.tgz";
      sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "generator async control flow goodness";
      homepage = "https://github.com/tj/co#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
  "config-^2.0.1" = nodeEnv.buildNodePackage {
    name = "config";
    packageName = "config";
    version = "2.0.2";
    src = fetchurl {
      url = "https://registry.npmjs.org/config/-/config-2.0.2.tgz";
      sha512 = "duIbkKb0gls0bOtGwd1vaD4236MwepQlZcrMheOGrn3/9Px7oYFh8G4LB3ylGOlPr5wGoJRm8Grb2RihJZxuHQ==";
    };
    dependencies = [
      sources."json5-1.0.1"
      sources."minimist-1.2.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Configuration control for production node deployments";
      homepage = http://lorenwest.github.com/node-config;
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
}