# terradart_hcl

[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.10-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

A pure Dart front-end for Terraform configurations: an HCL native-syntax
parser, a `*.tf.json` decoder, and a shared module model (`TfModule`) that
both produce. It is the input side of `terradart-migrate` (the HCL → Dart
migrator, [#80](https://github.com/nozomi-koborinai/terradart/issues/80)) and
depends on no other TerraDart package.

## What it does

- **Lossless structure.** Block bodies are ordered lists of entries, so
  repeated blocks (`container {}` ×2, `env {}` ×3, `lifecycle_rule {}` ×2)
  survive exactly as written. Every node carries a `SourceRange`, and comments
  are kept on the entry they precede, so a caller can copy any block back out
  verbatim.
- **Shallow expressions.** Literals, tuples, objects, traversals
  (`google_pubsub_topic.t.name`, `var.x`, `local.y[0]`) and templates
  (`"${var.a}-x"`, heredocs) are parsed exactly. Everything else — function
  calls, operators, conditionals, `for`, splats — is kept as `RawExpr` with
  its verbatim source and balanced brackets. Migration needs classification,
  not evaluation, so the full HCL expression grammar is deliberately not
  implemented.
- **Two front-ends, one model.** `parseHcl` and `decodeTfJson` both yield an
  `HclFile`; `TfModule.fromFiles` reads the Terraform structure (terraform
  settings, providers, variables, locals, outputs, resources, data sources,
  module calls, and `moved` / `import` / `check` / `removed` kept opaque) from
  either.
- **Serializer.** `HclWriter` renders a file or expression back to HCL; parse →
  write → parse is structurally identical.

## Usage

```dart
import 'package:terradart_hcl/terradart_hcl.dart';

final file = parseHcl(source, fileName: 'main.tf');
for (final block in file.body.blocksOf('resource')) {
  print('${block.labels[0].text}.${block.labels[1].text}');
}

final module = TfModule.fromFiles([file]);
for (final r in module.resources) {
  final name = r.body.attribute('name')?.value; // an Expr
  print('${r.type}.${r.name}: ${name is LiteralExpr ? name.value : name}');
}
```

## Conformance

`test/specsuite_test.dart` runs every case of the
[hashicorp/hcl specsuite](https://github.com/hashicorp/hcl/tree/main/specsuite)
through the parser: cases the suite expects to succeed must parse, and the
heredoc / literal cases are checked against the suite's expected values. The
suite is fetched with a shallow `git clone` into `.dart_tool/hcl_specsuite`
on first run (it is not vendored); set `TERRADART_HCL_SPECSUITE` to point at
an existing checkout, or `TERRADART_HCL_SPECSUITE_SKIP=1` to skip the test
offline.

## Status

Alpha, like the rest of TerraDart. Not published to pub.dev yet.
