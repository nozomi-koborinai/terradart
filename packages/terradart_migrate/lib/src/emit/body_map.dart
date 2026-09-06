/// A block body as a uniform expression tree.
///
/// HCL writes nested arguments as blocks (`push_config { ... }`), tf.json as
/// object attributes; the emitter reads both through one [ObjectExpr]:
/// repeated blocks of one type become a tuple, so a body looks exactly like
/// its Terraform JSON form.
library;

import 'package:terradart_hcl/terradart_hcl.dart';

/// [body] as an object: attributes verbatim, nested blocks grouped by type.
///
/// A labelled nested block (`dynamic "x"`, `provisioner "local-exec"`) is
/// kept under its type with the labels folded into a `__labels` key, which
/// no manifest slot ever claims — so it surfaces as an unmapped argument.
ObjectExpr bodyAsObject(Body body) {
  final items = <ObjectItem>[];
  final blocksByType = <String, List<Block>>{};
  final order = <String>[];
  for (final entry in body.entries) {
    switch (entry) {
      case Attribute(:final name, :final value, :final range):
        items.add(
          ObjectItem(LiteralExpr(name, SourceRange.none), value, range),
        );
      case Block(:final type):
        if (!blocksByType.containsKey(type)) order.add(type);
        blocksByType.putIfAbsent(type, () => []).add(entry);
    }
  }
  for (final type in order) {
    final blocks = blocksByType[type]!;
    final objects = [for (final b in blocks) _blockAsObject(b)];
    items.add(
      ObjectItem(
        LiteralExpr(type, SourceRange.none),
        objects.length == 1 && blocks.single.labels.isEmpty
            ? objects.single
            : TupleExpr(objects, SourceRange.none),
        blocks.first.range,
      ),
    );
  }
  return ObjectExpr(items, body.range);
}

ObjectExpr _blockAsObject(Block block) {
  final inner = bodyAsObject(block.body);
  if (block.labels.isEmpty) return inner;
  return ObjectExpr([
    ObjectItem(
      const LiteralExpr('__labels', SourceRange.none),
      TupleExpr([
        for (final l in block.labels) LiteralExpr(l.text, l.range),
      ], SourceRange.none),
      SourceRange.none,
    ),
    ...inner.items,
  ], block.range);
}

/// The items of an object keyed by name; `null` when [expr] is not an object
/// (a one-element tuple holding an object counts — tf.json writes single
/// nested blocks either way). A computed key is not supported.
Map<String, Expr>? objectMap(Expr expr) {
  var e = expr;
  if (e is TupleExpr && e.elements.length == 1) e = e.elements.single;
  if (e is! ObjectExpr) return null;
  final out = <String, Expr>{};
  for (final item in e.items) {
    final key = item.keyName;
    if (key == null) return null;
    out[key] = item.value;
  }
  return out;
}
