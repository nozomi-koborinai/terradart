import 'dart:convert';

import 'package:meta/meta.dart';

import 'dart_source.dart';

/// One `variable "<name>" { ... }` declaration.
///
/// [Stack.variable] builds these and returns the handle an argument takes;
/// synth emits the collected declarations under the top-level `variable`
/// key, and refuses to emit a config that references an undeclared one.
///
/// ```dart
/// final dbPassword = variable<String>('db_password', sensitive: true);
/// ```
///
/// Fields left null are omitted so Terraform's own default applies. A
/// variable with no [defaultValue] is required at `terraform apply`
/// time, which is the point for secrets: the value never enters synth
/// output or any Dart-side artifact.
@immutable
final class TfVariable {
  const TfVariable({
    this.type,
    this.description,
    this.defaultValue,
    this.sensitive,
    this.nullable,
  });

  /// Terraform type constraint. Left null, Terraform infers `any`.
  final TfType? type;

  /// Human-readable description, surfaced by `terraform plan` prompts.
  final String? description;

  /// Default value, making the variable optional. Omitted when null —
  /// so a variable with no default is required, which is what a
  /// secret-bearing variable wants.
  final Object? defaultValue;

  /// Marks the value as sensitive so Terraform redacts it from plan and
  /// apply output. Set this on a variable that feeds a sensitive field, the
  /// fix a `SensitiveLiteral` synth issue suggests.
  final bool? sensitive;

  /// Whether `null` is an accepted value. Terraform defaults to true.
  final bool? nullable;

  /// The `variable "<name>"` block body. The name itself is the map key
  /// synth files this under, not part of the body.
  Map<String, Object?> toTfJson() => {
    if (type != null) 'type': type!.expression,
    if (description != null) 'description': description,
    if (defaultValue != null) 'default': _jsonValue(defaultValue),
    if (sensitive != null) 'sensitive': sensitive,
    if (nullable != null) 'nullable': nullable,
  };
}

/// A Terraform type constraint: `string`, `list(number)`,
/// `object({ name = string })`.
///
/// [Stack.variable] derives it from the handle's Dart type — `String`,
/// `int` / `double` / `num`, `bool`, and `List` / `Set` / `Map<String, _>`
/// of those — so `type:` is only needed for what Dart cannot say:
///
/// ```dart
/// final labels = variable<Map<String, String>>('labels');
/// final service = variable<Object?>(
///   'service',
///   type: .object({'name': .string, 'port': .optional(.number, 8080)}),
/// );
/// ```
sealed class TfType {
  const TfType();

  /// `list(<element>)`.
  const factory TfType.list(TfType element) = TfCollectionType._list;

  /// `set(<element>)`.
  const factory TfType.set(TfType element) = TfCollectionType._set;

  /// `map(<element>)`.
  const factory TfType.map(TfType element) = TfCollectionType._map;

  /// `object({ <name> = <type>, ... })`; an attribute may be [optional].
  const factory TfType.object(Map<String, TfType> attributes) = TfObjectType;

  /// `tuple([<type>, ...])`.
  const factory TfType.tuple(List<TfType> elements) = TfTupleType;

  /// `optional(<type>[, <default>])`, an [object] attribute the caller
  /// may leave out.
  const factory TfType.optional(TfType type, [Object? defaultValue]) =
      TfOptionalType;

  /// Terraform `string`.
  static const TfType string = TfPrimitiveType._('string');

  /// Terraform `number`.
  static const TfType number = TfPrimitiveType._('number');

  /// Terraform `bool`.
  static const TfType bool = TfPrimitiveType._('bool');

  /// Terraform `any`: the value decides the type.
  static const TfType any = TfPrimitiveType._('any');

  /// The constraint as Terraform writes it, which is also its tf.json form.
  String get expression;

  @override
  String toString() => expression;

  /// The constraint a Dart type stands for, from its reified name
  /// (`T.toString()`): `null` for `Object?` / `dynamic` (no constraint),
  /// and a [FormatException] for a type with no Terraform counterpart.
  @internal
  static TfType? fromDartTypeName(String typeName) {
    final name = typeName.replaceAll(' ', '');
    if (name == 'dynamic' || name == 'Object?' || name == 'Object') {
      return null;
    }
    final parser = _DartTypeParser(name);
    final type = parser.type();
    if (type == null || !parser.atEnd) {
      throw FormatException('no Terraform type for $typeName');
    }
    return type;
  }
}

/// `string`, `number`, `bool` or `any`.
final class TfPrimitiveType extends TfType {
  const TfPrimitiveType._(this.name);

  final String name;

  @override
  String get expression => name;
}

/// `list(...)`, `set(...)` or `map(...)`.
final class TfCollectionType extends TfType {
  const TfCollectionType._list(this.element) : kind = 'list';
  const TfCollectionType._set(this.element) : kind = 'set';
  const TfCollectionType._map(this.element) : kind = 'map';

  final String kind;
  final TfType element;

  @override
  String get expression => '$kind(${element.expression})';
}

/// `object({ ... })`.
final class TfObjectType extends TfType {
  const TfObjectType(this.attributes);

  final Map<String, TfType> attributes;

  @override
  String get expression {
    if (attributes.isEmpty) return 'object({})';
    final fields = [
      for (final MapEntry(:key, :value) in attributes.entries)
        '${isTerraformIdentifier(key) ? key : jsonEncode(key)} = '
            '${value.expression}',
    ];
    return 'object({ ${fields.join(', ')} })';
  }
}

/// `tuple([...])`.
final class TfTupleType extends TfType {
  const TfTupleType(this.elements);

  final List<TfType> elements;

  @override
  String get expression =>
      'tuple([${elements.map((e) => e.expression).join(', ')}])';
}

/// `optional(<type>[, <default>])`.
final class TfOptionalType extends TfType {
  const TfOptionalType(this.type, [this.defaultValue]);

  final TfType type;

  /// Written as JSON, which Terraform reads as the same value.
  final Object? defaultValue;

  @override
  String get expression => defaultValue == null
      ? 'optional(${type.expression})'
      : 'optional(${type.expression}, ${jsonEncode(_jsonValue(defaultValue))})';
}

final class _DartTypeParser {
  _DartTypeParser(this._s);

  final String _s;
  var _i = 0;

  bool get atEnd => _i == _s.length;

  TfType? type() {
    final name = _identifier();
    final TfType? parsed;
    switch (name) {
      case 'String':
        parsed = TfType.string;
      case 'int' || 'double' || 'num':
        parsed = TfType.number;
      case 'bool':
        parsed = TfType.bool;
      case 'Object' || 'dynamic':
        parsed = TfType.any;
      case 'List' || 'Set':
        if (!_take('<')) return null;
        final element = type();
        if (element == null || !_take('>')) return null;
        parsed = name == 'List' ? TfType.list(element) : TfType.set(element);
      case 'Map':
        if (!_take('<') || _identifier() != 'String' || !_take(',')) {
          return null;
        }
        final value = type();
        if (value == null || !_take('>')) return null;
        parsed = TfType.map(value);
      default:
        return null;
    }
    _take('?');
    return parsed;
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
}

/// [value] with every `Set` as a list, which is how Terraform's JSON spells a
/// `set(...)` value and the only collection `jsonEncode` takes.
Object? _jsonValue(Object? value) => switch (value) {
  Set<Object?>() => [for (final e in value) _jsonValue(e)],
  List<Object?>() => [for (final e in value) _jsonValue(e)],
  Map<Object?, Object?>() => {
    for (final MapEntry(:key, :value) in value.entries) key: _jsonValue(value),
  },
  _ => value,
};
