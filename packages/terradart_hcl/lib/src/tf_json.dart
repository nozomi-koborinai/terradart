import 'dart:convert';

import 'ast.dart';
import 'diagnostics.dart';
import 'parser.dart';
import 'source.dart';

/// Decodes a Terraform JSON configuration (`*.tf.json`) into the same
/// [HclFile] shape [parseHcl] produces.
///
/// The Terraform-level structure is fixed, so it maps to blocks without a
/// schema: `resource` / `data` values are `{type: {name: body}}`,
/// `variable` / `output` / `module` / `provider` values are `{name: body}`,
/// `terraform` / `moved` / `import` / `removed` / `check` values are a body,
/// and `locals` is a body of attributes. Wherever Terraform allows a list
/// of bodies (repeated `provider` configurations, several `resource` entries
/// of the same address) each element becomes its own block.
///
/// Inside a body every key is an attribute: JSON objects become
/// [ObjectExpr], arrays [TupleExpr], and strings are parsed as templates
/// (`"${var.x}-y"` → [TemplateExpr]). Nodes decoded from JSON carry
/// [SourceRange.none].
HclFile decodeTfJson(String json, {String? fileName}) {
  final Object? root;
  try {
    root = jsonDecode(json);
  } on FormatException catch (e) {
    throw HclParseException([
      HclDiagnostic(
        'invalid JSON: ${e.message}',
        SourceRange.none,
        fileName: fileName,
      ),
    ]);
  }
  if (root is! Map<String, dynamic>) {
    throw HclParseException([
      HclDiagnostic(
        'a Terraform JSON file must be a JSON object',
        SourceRange.none,
        fileName: fileName,
      ),
    ]);
  }
  final decoder = _TfJsonDecoder(fileName);
  final entries = <BodyEntry>[];
  for (final e in root.entries) {
    entries.addAll(decoder.topLevel(e.key, e.value));
  }
  return HclFile(
    Body(entries, SourceRange.none),
    source: json,
    fileName: fileName,
    isJson: true,
  );
}

final class _TfJsonDecoder {
  _TfJsonDecoder(this.fileName);

  final String? fileName;

  static const _twoLabels = {'resource', 'data'};
  static const _oneLabel = {'variable', 'output', 'module', 'provider'};
  static const _noLabel = {'terraform', 'moved', 'import', 'removed', 'check'};

  Never _fail(String message) {
    throw HclParseException([
      HclDiagnostic(message, SourceRange.none, fileName: fileName),
    ]);
  }

  List<BodyEntry> topLevel(String key, Object? value) {
    if (_twoLabels.contains(key)) {
      final byType = _object(value, 'top-level "$key"');
      return [
        for (final t in byType.entries)
          for (final n in _object(t.value, '"$key" type "${t.key}"').entries)
            for (final body in _bodies(n.value, '$key.${t.key}.${n.key}'))
              _block(key, [t.key, n.key], body),
      ];
    }
    if (_oneLabel.contains(key)) {
      final byName = _object(value, 'top-level "$key"');
      return [
        for (final n in byName.entries)
          for (final body in _bodies(n.value, '$key.${n.key}'))
            _block(key, [n.key], body),
      ];
    }
    if (key == 'locals') {
      return [
        for (final body in _bodies(value, 'locals'))
          _block('locals', const [], body),
      ];
    }
    if (_noLabel.contains(key) ||
        value is Map<String, dynamic> ||
        value is List) {
      return [
        for (final body in _bodies(value, key)) _block(key, const [], body),
      ];
    }
    return [_attribute(key, value)];
  }

  Map<String, dynamic> _object(Object? value, String what) {
    if (value is Map<String, dynamic>) return value;
    _fail('$what must be a JSON object');
  }

  /// A body, or each body of a list of bodies.
  List<Map<String, dynamic>> _bodies(Object? value, String what) {
    if (value is Map<String, dynamic>) return [value];
    if (value is List) {
      return [
        for (final v in value)
          if (v is Map<String, dynamic>)
            v
          else
            _fail('$what: every list element must be a JSON object'),
      ];
    }
    _fail('$what must be a JSON object or a list of objects');
  }

  Block _block(String type, List<String> labels, Map<String, dynamic> body) =>
      Block(
        type,
        [for (final l in labels) BlockLabel(l, SourceRange.none, quoted: true)],
        Body([
          for (final e in body.entries) _attribute(e.key, e.value),
        ], SourceRange.none),
        SourceRange.none,
        typeRange: SourceRange.none,
      );

  Attribute _attribute(String name, Object? value) => Attribute(
    name,
    expr(value),
    SourceRange.none,
    nameRange: SourceRange.none,
  );

  Expr expr(Object? value) => switch (value) {
    null => const LiteralExpr(null, SourceRange.none, source: 'null'),
    String() => templateFromDecodedString(value, fileName: fileName),
    num() => LiteralExpr(value, SourceRange.none, source: _numberText(value)),
    bool() => LiteralExpr(value, SourceRange.none, source: value.toString()),
    List() => TupleExpr([for (final v in value) expr(v)], SourceRange.none),
    Map<String, dynamic>() => ObjectExpr(
      [
        for (final e in value.entries)
          ObjectItem(
            LiteralExpr(e.key, SourceRange.none, source: e.key),
            expr(e.value),
            SourceRange.none,
          ),
      ],
      SourceRange.none,
      multiLine: value.isNotEmpty,
    ),
    _ => _fail('unsupported JSON value ${value.runtimeType}'),
  };

  static String _numberText(num n) {
    if (n is int) return n.toString();
    final d = n as double;
    if (d == d.roundToDouble() && d.abs() < 1e15) return d.toInt().toString();
    return d.toString();
  }
}
