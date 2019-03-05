# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "accepts-1.3.5" = {
      name = "accepts";
      packageName = "accepts";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/accepts/-/accepts-1.3.5.tgz";
        sha1 = "eb777df6011723a3b14e8a72c0805c8e86746bd2";
      };
    };
    "array-flatten-1.1.1" = {
      name = "array-flatten";
      packageName = "array-flatten";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
        sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
      };
    };
    "body-parser-1.18.3" = {
      name = "body-parser";
      packageName = "body-parser";
      version = "1.18.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-1.18.3.tgz";
        sha1 = "5b292198ffdd553b3a0f20ded0592b956955c8b4";
      };
    };
    "bytes-3.0.0" = {
      name = "bytes";
      packageName = "bytes";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    };
    "content-disposition-0.5.2" = {
      name = "content-disposition";
      packageName = "content-disposition";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.2.tgz";
        sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
      };
    };
    "content-type-1.0.4" = {
      name = "content-type";
      packageName = "content-type";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz";
        sha512 = "hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA==";
      };
    };
    "cookie-0.3.1" = {
      name = "cookie";
      packageName = "cookie";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie/-/cookie-0.3.1.tgz";
        sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
      };
    };
    "cookie-signature-1.0.6" = {
      name = "cookie-signature";
      packageName = "cookie-signature";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
        sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
      };
    };
    "debug-2.6.9" = {
      name = "debug";
      packageName = "debug";
      version = "2.6.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz";
        sha512 = "bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==";
      };
    };
    "depd-1.1.2" = {
      name = "depd";
      packageName = "depd";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    };
    "destroy-1.0.4" = {
      name = "destroy";
      packageName = "destroy";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    };
    "ee-first-1.1.1" = {
      name = "ee-first";
      packageName = "ee-first";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    };
    "encodeurl-1.0.2" = {
      name = "encodeurl";
      packageName = "encodeurl";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz";
        sha1 = "ad3ff4c86ec2d029322f5a02c3a9a606c95b3f59";
      };
    };
    "escape-html-1.0.3" = {
      name = "escape-html";
      packageName = "escape-html";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    };
    "etag-1.8.1" = {
      name = "etag";
      packageName = "etag";
      version = "1.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    };
    "faye-websocket-0.10.0" = {
      name = "faye-websocket";
      packageName = "faye-websocket";
      version = "0.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.10.0.tgz";
        sha1 = "4e492f8d04dfb6f89003507f6edbf2d501e7c6f4";
      };
    };
    "finalhandler-1.1.1" = {
      name = "finalhandler";
      packageName = "finalhandler";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-1.1.1.tgz";
        sha512 = "Y1GUDo39ez4aHAw7MysnUD5JzYX+WaIj8I57kO3aEPT1fFRL4sr7mjei97FgnwhAyyzRYmQZaTHb2+9uZ1dPtg==";
      };
    };
    "forwarded-0.1.2" = {
      name = "forwarded";
      packageName = "forwarded";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/forwarded/-/forwarded-0.1.2.tgz";
        sha1 = "98c23dab1175657b8c0573e8ceccd91b0ff18c84";
      };
    };
    "fresh-0.5.2" = {
      name = "fresh";
      packageName = "fresh";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    };
    "http-errors-1.6.3" = {
      name = "http-errors";
      packageName = "http-errors";
      version = "1.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-errors/-/http-errors-1.6.3.tgz";
        sha1 = "8b55680bb4be283a0b5bf4ea2e38580be1d9320d";
      };
    };
    "http-parser-js-0.5.0" = {
      name = "http-parser-js";
      packageName = "http-parser-js";
      version = "0.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-parser-js/-/http-parser-js-0.5.0.tgz";
        sha512 = "cZdEF7r4gfRIq7ezX9J0T+kQmJNOub71dWbgAXVHDct80TKP4MCETtZQ31xyv38UwgzkWPYF/Xc0ge55dW9Z9w==";
      };
    };
    "iconv-lite-0.4.23" = {
      name = "iconv-lite";
      packageName = "iconv-lite";
      version = "0.4.23";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.23.tgz";
        sha512 = "neyTUVFtahjf0mB3dZT77u+8O0QB89jFdnBkd5P1JgYPbPaia3gXXOVL2fq8VyU2gMMD7SaN7QukTB/pmXYvDA==";
      };
    };
    "inherits-2.0.3" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    };
    "ipaddr.js-1.8.0" = {
      name = "ipaddr.js";
      packageName = "ipaddr.js";
      version = "1.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.8.0.tgz";
        sha1 = "eaa33d6ddd7ace8f7f6fe0c9ca0440e706738b1e";
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
    "media-typer-0.3.0" = {
      name = "media-typer";
      packageName = "media-typer";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
        sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
      };
    };
    "merge-descriptors-1.0.1" = {
      name = "merge-descriptors";
      packageName = "merge-descriptors";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
        sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
      };
    };
    "methods-1.1.2" = {
      name = "methods";
      packageName = "methods";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
        sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
      };
    };
    "mime-1.4.1" = {
      name = "mime";
      packageName = "mime";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.4.1.tgz";
        sha512 = "KI1+qOZu5DcW6wayYHSzR/tXKCDC5Om4s1z2QJjDULzLcmf3DvzS7oluY4HCTrc+9FiKmWUgeNLg7W3uIQvxtQ==";
      };
    };
    "mime-db-1.38.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.38.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.38.0.tgz";
        sha512 = "bqVioMFFzc2awcdJZIzR3HjZFX20QhilVS7hytkKrv7xFAn8bM1gzc/FOX2awLISvWe0PV8ptFKcon+wZ5qYkg==";
      };
    };
    "mime-types-2.1.22" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.22";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.22.tgz";
        sha512 = "aGl6TZGnhm/li6F7yx82bJiBZwgiEa4Hf6CNr8YO+r5UHr53tSTYZb102zyU50DOWWKeOv0uQLRL0/9EiKWCog==";
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
    "ms-2.0.0" = {
      name = "ms";
      packageName = "ms";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    };
    "negotiator-0.6.1" = {
      name = "negotiator";
      packageName = "negotiator";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.1.tgz";
        sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
      };
    };
    "on-finished-2.3.0" = {
      name = "on-finished";
      packageName = "on-finished";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    };
    "parseurl-1.3.2" = {
      name = "parseurl";
      packageName = "parseurl";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.2.tgz";
        sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
      };
    };
    "path-to-regexp-0.1.7" = {
      name = "path-to-regexp";
      packageName = "path-to-regexp";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
        sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
      };
    };
    "proxy-addr-2.0.4" = {
      name = "proxy-addr";
      packageName = "proxy-addr";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.4.tgz";
        sha512 = "5erio2h9jp5CHGwcybmxmVqHmnCBZeewlfJ0pex+UW7Qny7OOZXTtH56TGNyBizkgiOwhJtMKrVzDTeKcySZwA==";
      };
    };
    "qs-6.5.2" = {
      name = "qs";
      packageName = "qs";
      version = "6.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.5.2.tgz";
        sha512 = "N5ZAX4/LxJmF+7wN74pUD6qAh9/wnvdQcjq9TZjevvXzSUo7bfmw91saqMjzGS2xq91/odN2dW/WOl7qQHNDGA==";
      };
    };
    "range-parser-1.2.0" = {
      name = "range-parser";
      packageName = "range-parser";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.0.tgz";
        sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
      };
    };
    "raw-body-2.3.3" = {
      name = "raw-body";
      packageName = "raw-body";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/raw-body/-/raw-body-2.3.3.tgz";
        sha512 = "9esiElv1BrZoI3rCDuOuKCBRbuApGGaDPQfjSflGxdy4oyzqghxu6klEkkVIvBje+FF0BX9coEv8KqW6X/7njw==";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "send-0.16.2" = {
      name = "send";
      packageName = "send";
      version = "0.16.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/send/-/send-0.16.2.tgz";
        sha512 = "E64YFPUssFHEFBvpbbjr44NCLtI1AohxQ8ZSiJjQLskAdKuriYEP6VyGEsRDH8ScozGpkaX1BGvhanqCwkcEZw==";
      };
    };
    "serve-static-1.13.2" = {
      name = "serve-static";
      packageName = "serve-static";
      version = "1.13.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/serve-static/-/serve-static-1.13.2.tgz";
        sha512 = "p/tdJrO4U387R9oMjb1oj7qSMaMfmOyd4j9hOFoxZe2baQszgHcSWjuya/CiT5kgZZKRudHNOA0pYXOl8rQ5nw==";
      };
    };
    "setprototypeof-1.1.0" = {
      name = "setprototypeof";
      packageName = "setprototypeof";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.1.0.tgz";
        sha512 = "BvE/TwpZX4FXExxOxZyRGQQv651MSwmWKZGqvmPcRIjDqWub67kTKuIMx43cZZrS/cBBzwBcNDWoFxt2XEFIpQ==";
      };
    };
    "statuses-1.4.0" = {
      name = "statuses";
      packageName = "statuses";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-1.4.0.tgz";
        sha512 = "zhSCtt8v2NDrRlPQpCNtw/heZLtfUDqxBM1udqikb/Hbk52LK4nQSwr10u77iopCW5LsyHpuXS0GnEc48mLeew==";
      };
    };
    "type-is-1.6.16" = {
      name = "type-is";
      packageName = "type-is";
      version = "1.6.16";
      src = fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-1.6.16.tgz";
        sha512 = "HRkVv/5qY2G6I8iab9cI7v1bOIdhm94dVjQCPFElW9W+3GeDOSHmy2EBYe4VTApuzolPcmgFTN3ftVJRKR2J9Q==";
      };
    };
    "unpipe-1.0.0" = {
      name = "unpipe";
      packageName = "unpipe";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    };
    "utils-merge-1.0.1" = {
      name = "utils-merge";
      packageName = "utils-merge";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.1.tgz";
        sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
      };
    };
    "uuid-3.3.2" = {
      name = "uuid";
      packageName = "uuid";
      version = "3.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-3.3.2.tgz";
        sha512 = "yXJmeNaw3DnnKAOKJE51sL/ZaYfWJRl1pK9dr19YFCu0ObS231AB1/LbqTKRAQ5kw8A90rA6fr4riOUpTZvQZA==";
      };
    };
    "vary-1.1.2" = {
      name = "vary";
      packageName = "vary";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz";
        sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
      };
    };
    "websocket-driver-0.7.0" = {
      name = "websocket-driver";
      packageName = "websocket-driver";
      version = "0.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/websocket-driver/-/websocket-driver-0.7.0.tgz";
        sha1 = "0caf9d2d755d93aee049d4bdd0d3fe2cca2a24eb";
      };
    };
    "websocket-extensions-0.1.3" = {
      name = "websocket-extensions";
      packageName = "websocket-extensions";
      version = "0.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.3.tgz";
        sha512 = "nqHUnMXmBzT0w570r2JpJxfiSD1IzoI+HGVdd3aZ0yNi3ngvQ4jv1dtHt5VGxfI2yj5yqImPhOK4vmIh2xMbGg==";
      };
    };
  };
in
{
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
  "express-^4.16.4" = nodeEnv.buildNodePackage {
    name = "express";
    packageName = "express";
    version = "4.16.4";
    src = fetchurl {
      url = "https://registry.npmjs.org/express/-/express-4.16.4.tgz";
      sha512 = "j12Uuyb4FMrd/qQAm6uCHAkPtO8FDTRJZBDd5D2KOL2eLaz1yUNdUB/NOIyq0iU4q4cFarsUCrnFDPBcnksuOg==";
    };
    dependencies = [
      sources."accepts-1.3.5"
      sources."array-flatten-1.1.1"
      sources."body-parser-1.18.3"
      sources."bytes-3.0.0"
      sources."content-disposition-0.5.2"
      sources."content-type-1.0.4"
      sources."cookie-0.3.1"
      sources."cookie-signature-1.0.6"
      sources."debug-2.6.9"
      sources."depd-1.1.2"
      sources."destroy-1.0.4"
      sources."ee-first-1.1.1"
      sources."encodeurl-1.0.2"
      sources."escape-html-1.0.3"
      sources."etag-1.8.1"
      sources."finalhandler-1.1.1"
      sources."forwarded-0.1.2"
      sources."fresh-0.5.2"
      sources."http-errors-1.6.3"
      sources."iconv-lite-0.4.23"
      sources."inherits-2.0.3"
      sources."ipaddr.js-1.8.0"
      sources."media-typer-0.3.0"
      sources."merge-descriptors-1.0.1"
      sources."methods-1.1.2"
      sources."mime-1.4.1"
      sources."mime-db-1.38.0"
      sources."mime-types-2.1.22"
      sources."ms-2.0.0"
      sources."negotiator-0.6.1"
      sources."on-finished-2.3.0"
      sources."parseurl-1.3.2"
      sources."path-to-regexp-0.1.7"
      sources."proxy-addr-2.0.4"
      sources."qs-6.5.2"
      sources."range-parser-1.2.0"
      sources."raw-body-2.3.3"
      sources."safe-buffer-5.1.2"
      sources."safer-buffer-2.1.2"
      sources."send-0.16.2"
      sources."serve-static-1.13.2"
      sources."setprototypeof-1.1.0"
      sources."statuses-1.4.0"
      sources."type-is-1.6.16"
      sources."unpipe-1.0.0"
      sources."utils-merge-1.0.1"
      sources."vary-1.1.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Fast, unopinionated, minimalist web framework";
      homepage = http://expressjs.com/;
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
  "nodehun-git+https://git@github.com/ONLYOFFICE/nodehun.git#c9ba32e5ff117ecc51e8e119c0753a021e519113" = nodeEnv.buildNodePackage {
    name = "nodehun";
    packageName = "nodehun";
    version = "2.0.12";
    src = fetchgit {
      url = "https://git@github.com/ONLYOFFICE/nodehun.git";
      rev = "c9ba32e5ff117ecc51e8e119c0753a021e519113";
      sha256 = "04i3jnfyvy5yhih3v6wy8rqam9ks5f7baijwma0g3fppsjnv9wsc";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "The Hunspell binding for nodejs that exposes as much of hunspell as possible and also adds new features. Hunspell is a first class spellcheck library used by Google, Apple, and Mozilla.";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
  "sockjs-^0.3.19" = nodeEnv.buildNodePackage {
    name = "sockjs";
    packageName = "sockjs";
    version = "0.3.19";
    src = fetchurl {
      url = "https://registry.npmjs.org/sockjs/-/sockjs-0.3.19.tgz";
      sha512 = "V48klKZl8T6MzatbLlzzRNhMepEys9Y4oGFpypBFFn1gLI/QQ9HtLLyWJNbPlwGLelOVOEijUbTTJeLLI59jLw==";
    };
    dependencies = [
      sources."faye-websocket-0.10.0"
      sources."http-parser-js-0.5.0"
      sources."uuid-3.3.2"
      sources."websocket-driver-0.7.0"
      sources."websocket-extensions-0.1.3"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "SockJS-node is a server counterpart of SockJS-client a JavaScript library that provides a WebSocket-like object in the browser. SockJS gives you a coherent, cross-browser, Javascript API which creates a low latency, full duplex, cross-domain communication";
      homepage = https://github.com/sockjs/sockjs-node;
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
}