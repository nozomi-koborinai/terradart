import 'package:terradart_hcl/terradart_hcl.dart';

const _unclaimedBlockLabelsKey = '__labels';

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
      const LiteralExpr(_unclaimedBlockLabelsKey, SourceRange.none),
      TupleExpr([
        for (final l in block.labels) LiteralExpr(l.text, l.range),
      ], SourceRange.none),
      SourceRange.none,
    ),
    ...inner.items,
  ], block.range);
}

Map<String, Expr>? objectMap(Expr expr) {
  var e = expr;
  // Terraform JSON encodes a single nested block as either an object or a one-element array.
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
