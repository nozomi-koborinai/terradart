# Changelog

## 0.27.0 - unreleased

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
