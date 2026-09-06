import 'ast.dart';

/// Renders syntax nodes back to HCL native syntax.
///
/// Output is canonical rather than byte-identical to the input (two-space
/// indentation, one entry per line, a blank line between blocks), but it
/// preserves everything the tree does: entry order, repeated blocks,
/// one-line blocks, comments, heredoc bodies and raw expression text — so
/// `parseHcl(write(parseHcl(x)))` is structurally identical to
/// `parseHcl(x)`.
final class HclWriter {
  const HclWriter({this.indent = '  '});

  final String indent;

  static final RegExp _identifier = RegExp(
    r'^[\p{L}_][\p{L}\p{M}\p{N}_-]*$',
    unicode: true,
  );

  /// The whole file.
  String writeFile(HclFile file) {
    final buf = StringBuffer();
    _body(buf, file.body, 0, topLevel: true);
    return buf.toString();
  }

  /// A body at nesting [level] (0 = top level).
  String writeBody(Body body, {int level = 0}) {
    final buf = StringBuffer();
    _body(buf, body, level, topLevel: level == 0);
    return buf.toString();
  }

  /// One entry (attribute or block) at nesting [level].
  String writeEntry(BodyEntry entry, {int level = 0}) {
    final buf = StringBuffer();
    _entry(buf, entry, level);
    return buf.toString();
  }

  /// An expression, indented for nesting [level] when it spans lines.
  String writeExpr(Expr expr, {int level = 0}) => _expr(expr, level);

  void _body(StringBuffer buf, Body body, int level, {required bool topLevel}) {
    BodyEntry? previous;
    for (final e in body.entries) {
      if (topLevel && previous != null && e is Block) buf.writeln();
      _entry(buf, e, level);
      previous = e;
    }
    for (final c in body.trailingComments) {
      _line(buf, level, c.text);
    }
  }

  void _entry(StringBuffer buf, BodyEntry e, int level) {
    for (final c in e.leadingComments) {
      _line(buf, level, c.text);
    }
    switch (e) {
      case Attribute(:final name, :final value, :final trailingComment):
        final text = '$name = ${_expr(value, level)}';
        _line(
          buf,
          level,
          trailingComment == null ? text : '$text ${trailingComment.text}',
        );
      case Block(
        :final type,
        :final labels,
        :final body,
        :final oneLine,
        :final trailingComment,
      ):
        final head = StringBuffer(type);
        for (final l in labels) {
          head.write(' ');
          head.write(l.quoted ? _quote(l.text) : l.text);
        }
        final trailing = trailingComment == null
            ? ''
            : ' ${trailingComment.text}';
        final singleAttr =
            body.entries.length == 1 && body.entries.single is Attribute;
        if (oneLine &&
            body.trailingComments.isEmpty &&
            (body.entries.isEmpty || singleAttr)) {
          if (body.entries.isEmpty) {
            _line(buf, level, '$head {}$trailing');
          } else {
            final a = body.entries.single as Attribute;
            _line(
              buf,
              level,
              '$head { ${a.name} = ${_expr(a.value, level)} }$trailing',
            );
          }
          return;
        }
        _line(buf, level, '$head {');
        _body(buf, body, level + 1, topLevel: false);
        _line(buf, level, '}$trailing');
    }
  }

  void _line(StringBuffer buf, int level, String text) {
    buf.write(indent * level);
    buf.writeln(text);
  }

  String _expr(Expr e, int level) => switch (e) {
    LiteralExpr(:final value, :final source) => switch (value) {
      String() => _quote(value),
      num() => source ?? value.toString(),
      bool() => value.toString(),
      _ => 'null',
    },
    TemplateExpr() => _template(e, level),
    TraversalExpr(:final root, :final steps) => [
      root,
      for (final s in steps)
        switch (s) {
          AttrStep(:final name) => '.$name',
          IndexStep(:final index) => '[${_expr(index, level)}]',
        },
    ].join(),
    TupleExpr(:final elements, :final multiLine) => _tuple(
      elements,
      level,
      multiLine,
    ),
    ObjectExpr(:final items, :final multiLine) => _object(
      items,
      level,
      multiLine,
    ),
    RawExpr(:final source) => source,
  };

  String _tuple(List<Expr> elements, int level, bool multiLine) {
    if (elements.isEmpty) return '[]';
    final needsLines = multiLine || elements.any(_isHeredoc);
    if (!needsLines) {
      return '[${elements.map((x) => _expr(x, level)).join(', ')}]';
    }
    final buf = StringBuffer('[\n');
    for (final x in elements) {
      buf.write(indent * (level + 1));
      buf.write(_expr(x, level + 1));
      buf.writeln(_isHeredoc(x) ? '\n${indent * (level + 1)},' : ',');
    }
    buf.write(indent * level);
    buf.write(']');
    return buf.toString();
  }

  String _object(List<ObjectItem> items, int level, bool multiLine) {
    if (items.isEmpty) return '{}';
    final needsLines = multiLine || items.any((i) => _isHeredoc(i.value));
    String item(ObjectItem i, int lvl) =>
        '${_key(i.key)} ${i.colon ? ':' : '='} ${_expr(i.value, lvl)}';
    if (!needsLines) {
      return '{ ${items.map((i) => item(i, level)).join(', ')} }';
    }
    final buf = StringBuffer('{\n');
    for (final i in items) {
      buf.write(indent * (level + 1));
      buf.writeln(item(i, level + 1));
    }
    buf.write(indent * level);
    buf.write('}');
    return buf.toString();
  }

  String _key(Expr key) {
    final name = key.constantString;
    if (name != null) {
      return _identifier.hasMatch(name) ? name : _quote(name);
    }
    return _expr(key, 0);
  }

  static bool _isHeredoc(Expr e) => e is TemplateExpr && e.isHeredoc;

  String _template(TemplateExpr t, int level) {
    if (t.isHeredoc) {
      final body = t.rawBody ?? _templateBody(t, level, escapes: false);
      final buf = StringBuffer('<<${t.flush ? '-' : ''}${t.delimiter}\n');
      buf.write(body);
      if (!body.endsWith('\n')) buf.write('\n');
      // The closing marker sits at the enclosing entry's indentation.
      buf.write(indent * level);
      buf.write(t.delimiter);
      return buf.toString();
    }
    return '"${_templateBody(t, level, escapes: true)}"';
  }

  String _templateBody(TemplateExpr t, int level, {required bool escapes}) {
    final buf = StringBuffer();
    for (final p in t.parts) {
      switch (p) {
        case TemplateLiteral(:final text):
          buf.write(
            escapes ? _escapeQuoted(text) : _escapeTemplateMarkers(text),
          );
        case TemplateInterpolation(
          :final expr,
          :final stripLeft,
          :final stripRight,
        ):
          buf.write(
            '\${${stripLeft ? '~' : ''}${_expr(expr, level)}${stripRight ? '~' : ''}}',
          );
        case TemplateDirective(
          :final content,
          :final stripLeft,
          :final stripRight,
        ):
          buf.write(
            '%{${stripLeft ? '~' : ''}$content${stripRight ? '~' : ''}}',
          );
      }
    }
    return buf.toString();
  }

  static String _escapeTemplateMarkers(String s) =>
      s.replaceAll(r'${', r'$${').replaceAll('%{', '%%{');

  static String _escapeQuoted(String s) => _escapeTemplateMarkers(
    s
        .replaceAll(r'\', r'\\')
        .replaceAll('"', r'\"')
        .replaceAll('\n', r'\n')
        .replaceAll('\r', r'\r')
        .replaceAll('\t', r'\t'),
  );

  static String _quote(String s) => '"${_escapeQuoted(s)}"';
}

/// Convenience: [HclWriter.writeFile] with default settings.
String serializeHcl(HclFile file) => const HclWriter().writeFile(file);
