import 'ast.dart';

/// A compact, position-free rendering of a node, for tests and debugging:
/// two files that dump identically are structurally identical (comments
/// excluded).
String dumpHcl(HclNode node) {
  final buf = StringBuffer();
  _Dumper(buf).write(node, 0);
  return buf.toString();
}

final class _Dumper {
  _Dumper(this.buf);

  final StringBuffer buf;

  void _line(int indent, String text) {
    buf.write('  ' * indent);
    buf.writeln(text);
  }

  void write(HclNode n, int indent) {
    switch (n) {
      case HclFile(:final body):
        write(body, indent);
      case Body(:final entries):
        for (final e in entries) {
          write(e, indent);
        }
      case Attribute(:final name, :final value):
        _line(indent, '$name = ${expr(value)}');
      case Block(:final type, :final labels, :final body, :final oneLine):
        final head = [
          type,
          for (final l in labels) l.quoted ? '"${l.text}"' : l.text,
        ].join(' ');
        _line(indent, '$head {${oneLine ? ' (one-line)' : ''}');
        write(body, indent + 1);
        _line(indent, '}');
      case Expr():
        _line(indent, expr(n));
      case TemplatePart() || TraversalStep() || ObjectItem():
        _line(indent, n.toString());
    }
  }

  String expr(Expr e) => switch (e) {
    LiteralExpr(:final value) => value is String ? _quote(value) : '$value',
    TemplateExpr(:final parts, :final delimiter, :final flush) =>
      '${delimiter == null ? 'template' : 'heredoc<<${flush ? '-' : ''}$delimiter'}'
          '[${parts.map(_part).join('')}]',
    TraversalExpr(:final root, :final steps) =>
      'ref(${[root, for (final s in steps) switch (s) {
          AttrStep(:final name) => '.$name',
          IndexStep(:final index) => '[${expr(index)}]',
        }].join()})',
    TupleExpr(:final elements) => '[${elements.map(expr).join(', ')}]',
    ObjectExpr(:final items) =>
      '{${items.map((i) => '${expr(i.key)} = ${expr(i.value)}').join(', ')}}',
    RawExpr(:final source) => 'raw(${source.replaceAll(RegExp(r'\s+'), ' ')})',
  };

  String _part(TemplatePart p) => switch (p) {
    TemplateLiteral(:final text) => _quote(text),
    TemplateInterpolation(:final expr, :final stripLeft, :final stripRight) =>
      '\${${stripLeft ? '~' : ''}${this.expr(expr)}${stripRight ? '~' : ''}}',
    TemplateDirective(:final content) => '%{$content}',
  };

  static String _quote(String s) =>
      '"${s.replaceAll(r'\', r'\\').replaceAll('"', r'\"').replaceAll('\n', r'\n').replaceAll('\t', r'\t')}"';
}
