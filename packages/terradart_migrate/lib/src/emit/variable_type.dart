import 'package:terradart_hcl/terradart_hcl.dart';

import 'blocker.dart';
import 'dart_literal.dart';
import 'tf_expr.dart';

final class VariableType {
  const VariableType(this.dartType, {this.tfType});

  final String dartType;
  final String? tfType;

  VariableType get nullable => dartType.endsWith('?')
      ? this
      : VariableType('$dartType?', tfType: tfType);

  static const untyped = VariableType('Object?');
}

VariableType variableTypeOf(Expr? type, {Object? defaultValue}) {
  if (type == null) return VariableType.untyped;
  final text = (type.constantString ?? hclSource(type)).trim();
  final _Type parsed;
  try {
    final parser = _Parser(text);
    parsed = parser.type(inObject: false);
    parser.end();
  } on FormatException catch (e) {
    throw MigrateBlocker('type "$text" is not readable: ${e.message}');
  }
  final dart = parsed.dart;
  if (dart != null && (defaultValue == null || _conforms(defaultValue, dart))) {
    return VariableType(dart, tfType: parsed.derived ? null : parsed.source);
  }
  return VariableType('Object?', tfType: parsed.source);
}

bool _isValue(Expr e) => switch (e) {
  LiteralExpr() => true,
  TupleExpr(:final elements) => elements.every(_isValue),
  ObjectExpr(:final items) => items.every((i) => _isValue(i.value)),
  _ => e.constantString != null,
};

/// The value Terraform reads from [e]. Unlike [jsonValue] it keeps no
/// template escape: `TfType.optional` writes its default's `${` as `$${`.
Object? _value(Expr e) => switch (e) {
  LiteralExpr(:final value) => value,
  TupleExpr(:final elements) => [for (final x in elements) _value(x)],
  ObjectExpr(:final items) => {
    for (final item in items)
      item.keyName ?? hclSource(item.key): _value(item.value),
  },
  _ => e.constantString,
};

bool _conforms(Object? value, String dart) {
  if (dart == 'String') return value is String;
  if (dart == 'num') return value is num;
  if (dart == 'bool') return value is bool;
  if (dart == 'Object?') return true;
  if (dart.startsWith('List<')) {
    final element = dart.substring(5, dart.length - 1);
    return value is List && value.every((v) => _conforms(v, element));
  }
  if (dart.startsWith('Map<String, ')) {
    final element = dart.substring(12, dart.length - 1);
    return value is Map && value.values.every((v) => _conforms(v, element));
  }
  return false;
}

final class _Type {
  const _Type(this.source, this.dart, {this.derived = true});

  final String source;
  final String? dart;
  final bool derived;
}

final class _Parser {
  _Parser(this._s);

  final String _s;
  var _i = 0;

  _Type type({required bool inObject}) {
    final name = _identifier();
    switch (name) {
      case 'string':
        return const _Type('.string', 'String');
      case 'number':
        return const _Type('.number', 'num');
      case 'bool':
        return const _Type('.bool', 'bool');
      case 'any':
        return const _Type('.any', 'Object?', derived: false);
      case 'list' || 'set' || 'map':
        _expect('(');
        final element = type(inObject: false);
        _expect(')');
        final source = '.$name(${element.source})';
        final e = element.dart;
        final derived = element.derived || e == 'Object?';
        if (e == null || !derived) return _Type(source, null);
        if (name == 'map') {
          return _Type(source, 'Map<String, $e>');
        }
        return _Type(source, 'List<$e>', derived: name == 'list');
      case 'object':
        _expect('(');
        _expect('{');
        final fields = <String>[];
        while (!_peek('}')) {
          final key = _key();
          if (!_take('=')) _expect(':');
          fields.add('${dartString(key)}: ${type(inObject: true).source}');
          _take(',');
        }
        _expect('}');
        _expect(')');
        return _Type('.object({${fields.join(', ')}})', null);
      case 'tuple':
        _expect('(');
        _expect('[');
        final elements = <String>[];
        while (!_peek(']')) {
          elements.add(type(inObject: false).source);
          _take(',');
        }
        _expect(']');
        _expect(')');
        return _Type('.tuple([${elements.join(', ')}])', null);
      case 'optional' when inObject:
        _expect('(');
        final inner = type(inObject: false);
        if (_take(',')) {
          final value = _defaultValue();
          _expect(')');
          return _Type('.optional(${inner.source}, ${dartValue(value)})', null);
        }
        _expect(')');
        return _Type('.optional(${inner.source})', null);
      default:
        throw FormatException('unknown type "$name"');
    }
  }

  void end() {
    _skip();
    if (_i != _s.length) throw FormatException('unexpected "${_s[_i]}"');
  }

  Object? _defaultValue() {
    _skip();
    final start = _i;
    var depth = 0;
    String? quote;
    while (_i < _s.length) {
      final c = _s[_i];
      if (quote != null) {
        if (c == r'\') {
          _i++;
        } else if (c == quote) {
          quote = null;
        }
      } else if (c == '"') {
        quote = c;
      } else if ('([{'.contains(c)) {
        depth++;
      } else if (')]}'.contains(c)) {
        if (depth == 0) break;
        depth--;
      }
      _i++;
    }
    final source = _s.substring(start, _i);
    final Expr expr;
    try {
      expr = parseHclExpression(source);
    } on Object {
      throw FormatException('default "$source" is not a value');
    }
    if (!_isValue(expr)) {
      throw FormatException('default "$source" is not a value');
    }
    return _value(expr);
  }

  String _key() {
    _skip();
    if (_peek('"')) {
      final start = _i;
      _i++;
      while (_i < _s.length && _s[_i] != '"') {
        if (_s[_i] == r'\') _i++;
        _i++;
      }
      _expect('"');
      final value = jsonValue(parseHclExpression(_s.substring(start, _i)));
      if (value is! String) throw const FormatException('bad attribute key');
      return value;
    }
    final key = _identifier();
    if (key == null) throw const FormatException('expected an attribute');
    return key;
  }

  String? _identifier() {
    _skip();
    final start = _i;
    while (_i < _s.length && RegExp(r'[A-Za-z0-9_\-]').hasMatch(_s[_i])) {
      _i++;
    }
    return _i == start ? null : _s.substring(start, _i);
  }

  void _skip() {
    while (_i < _s.length && RegExp(r'\s').hasMatch(_s[_i])) {
      _i++;
    }
  }

  bool _peek(String c) {
    _skip();
    return _i < _s.length && _s[_i] == c;
  }

  bool _take(String c) {
    if (!_peek(c)) return false;
    _i++;
    return true;
  }

  void _expect(String c) {
    if (!_take(c)) {
      throw FormatException(
        _i < _s.length ? 'expected "$c" at "${_s[_i]}"' : 'expected "$c"',
      );
    }
  }
}
