import 'package:terradart_hcl/terradart_hcl.dart';

String escapeTemplateLiteral(String text) =>
    text.replaceAll(r'${', r'$${').replaceAll('%{', '%%{');

String hclSource(Expr expr) => switch (expr) {
  RawExpr(:final source) => source,
  _ => const HclWriter().writeExpr(expr),
};

String templateText(TemplateExpr template) {
  final buf = StringBuffer();
  for (final part in template.parts) {
    switch (part) {
      case TemplateLiteral(:final text):
        buf.write(escapeTemplateLiteral(text));
      case TemplateInterpolation(
        :final expr,
        :final stripLeft,
        :final stripRight,
      ):
        buf
          ..write(r'${')
          ..write(stripLeft ? '~' : '')
          ..write(hclSource(expr))
          ..write(stripRight ? '~' : '')
          ..write('}');
      case TemplateDirective(
        :final content,
        :final stripLeft,
        :final stripRight,
      ):
        buf
          ..write('%{')
          ..write(stripLeft ? '~' : '')
          ..write(content)
          ..write(stripRight ? '~' : '')
          ..write('}');
    }
  }
  return buf.toString();
}

String? constantText(Expr expr) {
  final c = expr.constantString;
  return c == null ? null : escapeTemplateLiteral(c);
}

Object? jsonValue(Expr expr) => switch (expr) {
  LiteralExpr(:final value) =>
    value is String ? escapeTemplateLiteral(value) : value,
  TemplateExpr() => templateText(expr),
  TupleExpr(:final elements) => [for (final e in elements) jsonValue(e)],
  ObjectExpr(:final items) => {
    for (final item in items)
      item.keyName ?? hclSource(item.key): jsonValue(item.value),
  },
  TraversalExpr() || RawExpr() => '\${${hclSource(expr)}}',
};

TraversalExpr? singleReference(Expr expr) {
  if (expr is TraversalExpr) return expr;
  if (expr is TemplateExpr && expr.parts.length == 1) {
    final part = expr.parts.single;
    if (part is TemplateInterpolation &&
        !part.stripLeft &&
        !part.stripRight &&
        part.expr is TraversalExpr) {
      return part.expr as TraversalExpr;
    }
  }
  return null;
}

sealed class ReferenceTarget {
  const ReferenceTarget();
}

final class BlockReference extends ReferenceTarget {
  const BlockReference({
    required this.address,
    required this.attribute,
    required this.isData,
  });

  final String address;
  final String attribute;
  final bool isData;
}

final class VariableReference extends ReferenceTarget {
  const VariableReference(this.name);

  final String name;
}

final class ModuleReference extends ReferenceTarget {
  const ModuleReference({required this.address, required this.attribute});

  final String address;
  final String attribute;
}

final class OtherReference extends ReferenceTarget {
  const OtherReference();
}

ReferenceTarget classifyTraversal(TraversalExpr t) {
  final steps = t.steps;
  String attrPath(int from) {
    final buf = StringBuffer();
    for (var i = from; i < steps.length; i++) {
      final s = steps[i];
      switch (s) {
        case AttrStep(:final name):
          if (buf.isNotEmpty) buf.write('.');
          buf.write(name);
        case IndexStep(:final index):
          final v = index.value;
          buf.write(v is String ? '["$v"]' : '[$v]');
      }
    }
    return buf.toString();
  }

  String? attrName(int i) => i < steps.length && steps[i] is AttrStep
      ? (steps[i] as AttrStep).name
      : null;

  switch (t.root) {
    case 'var':
      final name = attrName(0);
      if (name != null && steps.length == 1) return VariableReference(name);
      return const OtherReference();
    case 'data':
      final type = attrName(0);
      final name = attrName(1);
      if (type == null || name == null) return const OtherReference();
      return BlockReference(
        address: 'data.$type.$name',
        attribute: attrPath(2),
        isData: true,
      );
    case 'module':
      final name = attrName(0);
      if (name == null) return const OtherReference();
      final attribute = attrPath(1);
      if (attribute.startsWith('[')) return const OtherReference();
      return ModuleReference(address: 'module.$name', attribute: attribute);
    case 'local' || 'each' || 'count' || 'path' || 'terraform' || 'self':
      return const OtherReference();
    default:
      final name = attrName(0);
      if (name == null || !t.root.contains('_')) return const OtherReference();
      return BlockReference(
        address: '${t.root}.$name',
        attribute: attrPath(1),
        isData: false,
      );
  }
}
