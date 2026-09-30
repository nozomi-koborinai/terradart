import 'dart:convert';

import 'package:meta/meta.dart';

import '../app_constant.dart';
import '../dart_source.dart';
import '../dart_value_type.dart';
import '../data.dart';
import '../resource.dart';
import '../stack.dart';
import '../tf_arg.dart';
import '../tf_ref.dart';
import '../tf_template.dart';
import 'json_encoder.dart';

/// Renders a Stack's [Stack.outputs] as the `output` block and its
/// [Stack.constants] (with [Stack.appExports]) as the generated Dart file.
@internal
abstract final class AppExportsEmitter {
  /// The top-level `output` value, or `null` when the Stack declares none.
  static Map<String, Object?>? outputBlock(Stack stack) {
    if (stack.outputs.isEmpty) return null;
    return {
      for (final MapEntry(key: name, value: o) in stack.outputs.entries)
        name: o.toTfJson(TfJsonEncoder.encodeArg(o.value)),
    };
  }

  /// The environment variable a non-sensitive [output] of [stack] is read
  /// from by the generated reader's `fromEnvironment`, and its value.
  static MapEntry<String, TfArg<String>> environmentEntry(
    Stack stack,
    String output,
  ) {
    final o = stack.outputs[output]!;
    final type = o.valueType;
    final encoded = TfJsonEncoder.encodeArg(o.value);
    final TfArg<String> value;
    if (type is ScalarValueType && type.name == 'String') {
      value = switch ((o.value, encoded)) {
        (TfArgLiteral(), final String s) => TfArg.literal(s),
        (TfArgLiteral(), _) => throw ArgumentError.value(
          output,
          'output',
          'Output "$output" is null, which no environment variable holds.',
        ),
        (_, final String s) => TfArg.expression<String>(s),
        _ => throw StateError('Output "$output" encodes to $encoded.'),
      };
    } else if (o.value is TfArgLiteral) {
      if (_holdsTemplate(encoded)) {
        throw ArgumentError.value(
          output,
          'output',
          'Output "$output" is a literal holding references; its JSON is '
              'only known at apply. Pass it as one .expression instead.',
        );
      }
      value = TfArg.literal(jsonEncode(encoded));
    } else {
      final template = encoded as String;
      final inner = template.startsWith(r'${') && template.endsWith('}')
          ? template.substring(2, template.length - 1)
          : null;
      if (inner == null || inner.contains(r'${') || !_balanced(inner)) {
        throw ArgumentError.value(
          output,
          'output',
          'Output "$output" of type ${type.source} is the template '
              '"$template", which has no JSON encoding; make it one '
              r'interpolation ("${...}").',
        );
      }
      value = TfArg.expression<String>('\${jsonencode($inner)}');
    }
    return MapEntry(outputEnvironmentName(output), value);
  }

  /// True when no `}` in [body] closes the sequence before its end.
  static bool _balanced(String body) {
    var depth = 0;
    for (final c in body.split('')) {
      if (c == '{') depth++;
      if (c == '}' && --depth < 0) return false;
    }
    return depth == 0;
  }

  static bool _holdsTemplate(Object? encoded) => switch (encoded) {
    String() => hasTemplateSequence(encoded),
    List() => encoded.any(_holdsTemplate),
    Map() => encoded.values.any(_holdsTemplate),
    _ => false,
  };

  /// The generated Dart source, or `null` when the Stack has no
  /// [Stack.appExports] file.
  static String? dartSource(Stack stack) {
    final file = stack.appExports;
    if (file == null) return null;
    final prefix = file.name ?? _className(stack);

    final buf = StringBuffer()
      ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
      ..writeln('// terradart synth output for stack: ${stack.runtimeType}')
      ..writeln('// dart format off')
      ..writeln('// ignore_for_file: type=lint')
      ..writeln()
      ..writeln("import 'dart:convert';")
      ..writeln();
    _constantsClass(buf, stack, '${prefix}Constants');
    buf.writeln();
    _outputsClass(buf, stack, '${prefix}Outputs');
    return buf.toString();
  }

  static void _constantsClass(StringBuffer buf, Stack stack, String name) {
    buf
      ..writeln('/// The constants of the stack, known when synth ran.')
      ..writeln('abstract final class $name {')
      ..writeln('  $name._();');
    for (final MapEntry(key: constant, value: c) in stack.constants.entries) {
      buf.writeln();
      _doc(buf, c.description);
      buf.writeln(
        '  static const ${c.valueType!.source} $constant = '
        '${_constantLiteral(stack, constant, c)};',
      );
    }
    buf.writeln('}');
  }

  static void _outputsClass(StringBuffer buf, Stack stack, String name) {
    buf.write("""
/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class $name {
  $name._(this._read);

  /// Reads the outputs of `terraform output -json`:
  /// `$name.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  factory $name.fromTerraformJson(Map<String, Object?> outputs) =>
      $name._((output, variable, json) {
        final entry = outputs[output];
        if (entry is Map && entry.containsKey('value')) return entry['value'];
        throw StateError(
          'Terraform output "\$output" is missing; apply the stack first.',
        );
      });

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  factory $name.fromEnvironment(Map<String, String> environment) =>
      $name._((output, variable, json) {
        final raw = environment[variable];
        if (raw == null) {
          throw StateError(
            'Environment variable \$variable (Terraform output "\$output") '
            'is not set.',
          );
        }
        if (!json) return raw;
        try {
          return jsonDecode(raw);
        } on FormatException catch (e) {
          throw StateError(
            'Environment variable \$variable (Terraform output "\$output") '
            'is not JSON: \${e.message}',
          );
        }
      });

  final Object? Function(String output, String variable, bool json) _read;
""");
    for (final MapEntry(key: output, value: o) in stack.outputs.entries) {
      if (o.sensitive) continue;
      final type = o.valueType;
      final json = !(type is ScalarValueType && type.name == 'String');
      buf.writeln();
      _doc(buf, o.description);
      buf
        ..writeln('  ${type.source} get ${outputGetterName(output)} {')
        ..writeln(
          '    final value = _read(${dartStringLiteral(output)}, '
          "'${outputEnvironmentName(output)}', $json);",
        )
        ..writeln(
          '    return ${_convert(type, 'value', dartStringLiteral(output), 0)};',
        )
        ..writeln('  }');
    }
    buf
      ..writeln()
      ..write(r"""
  static T _as<T>(Object? value, String output) {
    if (value is T) return value;
    throw StateError(
      'Terraform output "$output" is ${value.runtimeType} $value, not $T.',
    );
  }
}
""");
  }

  /// An expression converting the decoded JSON [value] to [type].
  static String _convert(
    DartValueType type,
    String value,
    String output,
    int depth,
  ) {
    final nonNull = switch (type) {
      ScalarValueType(name: 'double') => '_as<num>($value, $output).toDouble()',
      ScalarValueType(:final name) => '_as<$name>($value, $output)',
      ListValueType(:final element) =>
        '[for (final e$depth in _as<List<Object?>>($value, $output)) '
            '${_convert(element, 'e$depth', output, depth + 1)}]',
      MapValueType(value: final v) =>
        '{for (final MapEntry(:key, value: v$depth) in '
            '_as<Map<String, Object?>>($value, $output).entries) '
            'key: ${_convert(v, 'v$depth', output, depth + 1)}}',
    };
    if (!type.nullable) return nonNull;
    if (type case ScalarValueType(name: 'Object')) return value;
    return '$value == null ? null : $nonNull';
  }

  static void _doc(StringBuffer buf, String? doc) {
    if (doc == null) return;
    for (final line in doc.split('\n')) {
      buf.writeln('  /// $line'.trimRight());
    }
  }

  static String _constantLiteral(
    Stack stack,
    String name,
    AppConstant<Object?> c,
  ) {
    final type = c.valueType!;
    switch (c) {
      case ValueConstant(:final value):
        return type.literal(value);
      case EnvironmentConstant(:final name, :final defaultValue):
        final quotedName = "'$name'";
        return defaultValue == null
            ? 'String.fromEnvironment($quotedName)'
            : 'String.fromEnvironment($quotedName, '
                  'defaultValue: ${type.literal(defaultValue)})';
      case RefConstant(:final ref):
        final value = _resolve(stack, name, ref);
        if (!type.conforms(value)) {
          throw StateError(
            'Constant "$name" is a ${type.source}, but '
            '${ref.bareAddress} is set to ${value.runtimeType} $value.',
          );
        }
        return type.literal(value);
    }
  }

  /// The literal [ref]'s attribute is set to; throws [StateError] naming
  /// what the attribute is set by when it is not one.
  static Object? _resolve(Stack stack, String name, TfRef<Object?> ref) {
    final (owner, attr) = switch (ref) {
      AttributeRef(:final owner, :final attr) => (owner, attr),
      DataRef(:final owner, :final attr) => (owner, attr),
      ResourceRef() => throw StateError('unreachable: checked in addConstant'),
    };
    final address = ref.bareAddress;
    // ignore: invalid_use_of_protected_member
    if (owner is Resource && owner.sensitiveFields.contains(attr)) {
      throw StateError(
        'Constant "$name" reads $address, a sensitive field; a secret '
        'never becomes a Dart constant. Use '
        "addOutput('<name>', .ref(...), sensitive: true) or read it at "
        'runtime.',
      );
    }
    final Map<String, TfArg<dynamic>?> argMap;
    switch (owner) {
      case Data() when stack.dataSources.contains(owner):
        argMap = owner.argMap;
      case Resource() when owner is! Data && stack.resources.contains(owner):
        argMap = owner.argMap;
      default:
        throw StateError(
          'Constant "$name" reads $address, which is not registered on this '
          'Stack; add it with add(...) / addData(...).',
        );
    }
    final arg = argMap[attr];
    final value = switch (arg) {
      TfArgLiteral(:final value) => _plain(value),
      _ => null,
    };
    if (arg is TfArgLiteral && value != _notPlain) return value;
    final setBy = switch (arg) {
      null => 'not set in the Stack (the provider computes it at apply)',
      TfArgLiteral() => 'a literal holding a reference or template',
      TfArgRef(:final ref) => 'a reference to ${ref.bareAddress}',
      TfArgVariable(:final name) => 'the variable "$name"',
      TfArgExpression(:final template) => 'the expression $template',
    };
    throw StateError(
      'Constant "$name" reads $address, which is $setBy — a Dart constant '
      'needs a value known at synth. Use '
      "addOutput('<name>', .ref(...)) for an apply-time value.",
    );
  }

  static const Object _notPlain = _NotPlain();

  /// [value] with enums as their Terraform value and nested literals
  /// unwrapped, or [_notPlain] when it holds a reference, a variable, an
  /// expression or a string Terraform would interpolate.
  static Object? _plain(Object? value) {
    switch (value) {
      case TerraformEnum():
        return value.terraformValue;
      case TfArgLiteral(:final value):
        return _plain(value);
      case TfArg():
        return _notPlain;
      case String() when hasTemplateSequence(value):
        return _notPlain;
      case List():
        final out = [for (final e in value) _plain(e)];
        return out.contains(_notPlain) ? _notPlain : out;
      case Map():
        final out = {
          for (final MapEntry(:key, value: v) in value.entries) key: _plain(v),
        };
        final templatedKey = value.keys.any(
          (k) => k is String && hasTemplateSequence(k),
        );
        return templatedKey || out.values.contains(_notPlain) ? _notPlain : out;
      default:
        return value;
    }
  }

  /// `OrdersStack` for `final class OrdersStack extends Stack`; a leading
  /// `_` of a private class is dropped.
  static String _className(Stack stack) {
    final name = stack.runtimeType.toString();
    return name.replaceFirst(RegExp('^_+'), '');
  }
}

final class _NotPlain {
  const _NotPlain();
}
