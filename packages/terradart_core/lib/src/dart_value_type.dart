import 'dart_source.dart';

/// The Dart types a generated constant or output field can have: the JSON
/// value types, lists of them, and maps with `String` keys, each optionally
/// nullable. Anything else has no const literal the generated file could
/// write without importing the type.
const String supportedDartValueTypes =
    'String, int, double, num, bool, Object, List<E> and Map<String, V> '
    '(E and V themselves supported), each optionally nullable';

/// A supported Dart value type, parsed from a reified type argument
/// (`T.toString()`), that checks and renders values of that type.
sealed class DartValueType {
  const DartValueType(this.nullable);

  /// Parses [typeName] (`List<String>`, `Map<String, num>?`, `dynamic`), or
  /// returns `null` when it is not a supported type.
  static DartValueType? tryParse(String typeName) {
    final parser = _Parser(typeName.replaceAll(' ', ''));
    final type = parser.type();
    return parser.atEnd ? type : null;
  }

  /// Whether `null` is a value of this type.
  final bool nullable;

  /// The type as written in generated source.
  String get source;

  /// Whether [value] is a value of this type. Lists and maps are checked
  /// element by element, so a `List<Object?>` holding only strings conforms
  /// to `List<String>`.
  bool conforms(Object? value) =>
      value == null ? nullable : _conformsNonNull(value);

  bool _conformsNonNull(Object value);

  /// A const-context Dart literal for [value], which must [conform].
  String literal(Object? value) => switch (value) {
    null => 'null',
    String() => dartStringLiteral(value),
    double() => _doubleLiteral(value),
    num() || bool() => '$value',
    List() => '[${value.map(literal).join(', ')}]',
    Map() => _mapLiteral(value),
    _ => throw ArgumentError.value(value, 'value', 'has no Dart literal'),
  };

  String _mapLiteral(Map<Object?, Object?> value) {
    final entries = [
      for (final MapEntry(:key, value: v) in value.entries)
        '${dartStringLiteral(key! as String)}: ${literal(v)}',
    ];
    return '{${entries.join(', ')}}';
  }

  static String _doubleLiteral(double value) {
    if (!value.isFinite) {
      throw ArgumentError.value(value, 'value', 'must be finite');
    }
    return '$value';
  }

  String get _suffix => nullable ? '?' : '';
}

/// `String`, `int`, `double`, `num`, `bool` or `Object`.
final class ScalarValueType extends DartValueType {
  const ScalarValueType(this.name, {bool nullable = false}) : super(nullable);

  final String name;

  @override
  String get source => '$name$_suffix';

  @override
  bool _conformsNonNull(Object value) => switch (name) {
    'String' => value is String,
    'int' => value is int,
    'double' => value is double && value.isFinite,
    'num' => value is num && value.isFinite,
    'bool' => value is bool,
    _ => _isJsonValue(value),
  };

  static bool _isJsonValue(Object? value) => switch (value) {
    null || String() || bool() => true,
    num() => value.isFinite,
    List() => value.every(_isJsonValue),
    Map() => value.entries.every(
      (e) => e.key is String && _isJsonValue(e.value),
    ),
    _ => false,
  };
}

/// `List<E>`.
final class ListValueType extends DartValueType {
  const ListValueType(this.element, {bool nullable = false}) : super(nullable);

  final DartValueType element;

  @override
  String get source => 'List<${element.source}>$_suffix';

  @override
  bool _conformsNonNull(Object value) =>
      value is List && value.every(element.conforms);
}

/// `Map<String, V>`.
final class MapValueType extends DartValueType {
  const MapValueType(this.value, {bool nullable = false}) : super(nullable);

  final DartValueType value;

  @override
  String get source => 'Map<String, ${value.source}>$_suffix';

  @override
  bool _conformsNonNull(Object v) =>
      v is Map &&
      v.entries.every((e) => e.key is String && value.conforms(e.value));
}

final class _Parser {
  _Parser(this._s);

  final String _s;
  var _i = 0;

  bool get atEnd => _i == _s.length;

  DartValueType? type() {
    final name = _identifier();
    switch (name) {
      case 'dynamic':
        return const ScalarValueType('Object', nullable: true);
      case 'String' || 'int' || 'double' || 'num' || 'bool' || 'Object':
        return ScalarValueType(name!, nullable: _question());
      case 'List':
        if (!_take('<')) return null;
        final element = type();
        if (element == null || !_take('>')) return null;
        return ListValueType(element, nullable: _question());
      case 'Map':
        if (!_take('<') || _identifier() != 'String' || !_take(',')) {
          return null;
        }
        final value = type();
        if (value == null || !_take('>')) return null;
        return MapValueType(value, nullable: _question());
      default:
        return null;
    }
  }

  String? _identifier() {
    final start = _i;
    while (_i < _s.length && RegExp('[A-Za-z]').hasMatch(_s[_i])) {
      _i++;
    }
    return _i == start ? null : _s.substring(start, _i);
  }

  bool _take(String c) {
    if (_i < _s.length && _s[_i] == c) {
      _i++;
      return true;
    }
    return false;
  }

  bool _question() => _take('?');
}
