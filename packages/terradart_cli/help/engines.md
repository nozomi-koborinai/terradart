Which OpenTofu or Terraform binary terradart runs.

The first of:

  1. --engine-path <file>, --engine tofu|terraform, or engine_path / engine
     under terradart: in pubspec.yaml
  2. the engine that last applied this environment's state
     (.terradart/engines.json)
  3. tofu on PATH
  4. terraform on PATH
  5. OpenTofu downloaded from its GitHub release

  terradart engine
  terradart engine --engine terraform
  terradart plan --env dev --engine terraform

The download is the release terradart_cli pins (opentofu_version in
pubspec.yaml picks another), for Linux, macOS and Windows on amd64 and
arm64, checked against the SHA-256 the package ships. It is cached in
~/.cache/terradart (Linux), ~/Library/Caches/terradart (macOS) or
%LOCALAPPDATA%\terradart (Windows).

  TERRADART_CACHE_DIR        another cache directory
  TERRADART_OPENTOFU_MIRROR  download from a mirror of the release layout

A state written by one engine is rewritten for the other at its next apply,
and the first may not read it back. When the engine about to run is not the
one that wrote the state, terradart warns; when it picked the engine by
itself (3 to 5) it asks on a terminal, and otherwise stops with exit code 3
and the --engine flag that decides. No engine at all is exit code 11.

terradart migrate writes engine: terraform into the package it generates,
so a migrated project keeps the engine its state came from.

More: https://terradart.dev/docs/cli/#the-engine
