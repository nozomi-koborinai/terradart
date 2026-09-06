/// Classification of `terradart_hcl` expressions for the emitter.
///
/// Nothing here evaluates anything: an expression is a constant, a single
/// reference (`google_x.y.attr`, `data.google_x.y.attr`, `var.x`) or an
/// opaque Terraform expression whose source text is copied verbatim.
library;

import 'package:terradart_hcl/terradart_hcl.dart';

/// Re-applies HCL's template escapes so literal text survives another trip
/// through Terraform: `${` → `$${`, `%{` → `%%{`.
String escapeTemplateLiteral(String text) =>
    text.replaceAll(r'${', r'$${').replaceAll('%{', '%%{');

/// The Terraform source of [expr] as it would be written in HCL — for a
/// template, quoted.
String hclSource(Expr expr) => switch (expr) {
  RawExpr(:final source) => source,
  _ => const HclWriter().writeExpr(expr),
};

/// The text of a template as it appears inside a tf.json string: literal
/// parts re-escaped, interpolations and directives rebuilt around their
/// expression source.
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

/// The constant string [expr] denotes, re-escaped for Terraform, or `null`
/// when it is not a plain string.
String? constantText(Expr expr) {
  final c = expr.constantString;
  return c == null ? null : escapeTemplateLiteral(c);
}

/// The tf.json value [expr] stands for: literals as themselves, templates as
/// their text (constants re-escaped), tuples and objects recursively, and any
/// other expression as a `${...}` interpolation string.
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

/// A reference `<root>.<...>` that is the whole value of [expr]: a bare
/// traversal, or a template holding exactly one interpolation of one.
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

/// What a traversal points at.
sealed class ReferenceTarget {
  const ReferenceTarget();
}

/// `google_pubsub_topic.orders.id` / `data.google_project.current.number`.
final class BlockReference extends ReferenceTarget {
  const BlockReference({
    required this.address,
    required this.attribute,
    required this.isData,
  });

  /// `google_pubsub_topic.orders` or `data.google_project.current`.
  final String address;

  /// The attribute path after the block address (`id`, `spec[0].name`), or
  /// empty for a reference to the block itself.
  final String attribute;
  final bool isData;
}

/// `var.name`.
final class VariableReference extends ReferenceTarget {
  const VariableReference(this.name);

  final String name;
}

/// `local.x`, `module.x.y`, `each.key`, `path.module`, ... — anything the
/// migrator does not resolve.
final class OtherReference extends ReferenceTarget {
  const OtherReference();
}

/// Classifies [t]: a resource / data-source attribute, a variable, or other.
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
    case 'local' ||
        'module' ||
        'each' ||
        'count' ||
        'path' ||
        'terraform' ||
        'self':
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
