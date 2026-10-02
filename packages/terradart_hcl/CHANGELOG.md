# Changelog

## 0.32.1 - 2026-10-02

- No API changes. Republishes the 0.32.0 workspace so `terradart_appwrite`, `terradart_cloudflare`, `terradart_aws` and `terradart_migrate` reach pub.dev; the 0.32.0 publish workflow stopped them at a wrapper-count check that also counted hand-written files, and now counts only generated wrappers ([#877](https://github.com/nozomi-koborinai/terradart/pull/877)).

## 0.32.0 - 2026-10-02

- Object keys may be dotted identifiers (`providers = { google.eu = google.eu }`). A quoted key (`"aws.west"`) is unchanged. `HclWriter` writes a dotted identifier key unquoted.

## 0.31.0 - 2026-10-01

- pub.dev: add `example/main.dart` (parse a module, walk its resources, write a block back) and dartdoc on every public member. No API changes.

## 0.30.0 - 2026-09-28

First release on pub.dev, published beside `terradart_migrate` (which reads Terraform through it). No `terradart_hcl` API changes.

## 0.29.0 - 2026-09-27

Lockstep release. No `terradart_hcl` API changes.

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_hcl` API changes.

## 0.28.0 - 2026-09-13

Initial package (issue #657, part of the `terradart-migrate` epic #80).

- `parseHcl` — HCL native-syntax parser: blocks with ordered, repeatable
  entries, attributes, one-line blocks, quoted-string and heredoc templates
  (`${}` interpolations, `%{}` directives, `<<-` flush indentation), comments
  kept on the entries they precede, and a source range on every node.
- Shallow expressions: literals, tuples, objects, traversals and templates
  are parsed exactly; every other expression (function calls, operators,
  conditionals, `for`, splats) is kept verbatim as `RawExpr` with balanced
  brackets.
- `decodeTfJson` — Terraform JSON syntax (`*.tf.json`) decoder producing the
  same `HclFile` shape.
- `TfModule` — the Terraform module model (terraform settings, providers,
  variables, locals, outputs, resources, data sources, module calls, opaque
  blocks) built from either front-end; `loadTfModule` reads a directory.
- `HclWriter` — serializes files and expressions back to HCL, preserving
  block order and repeats.
