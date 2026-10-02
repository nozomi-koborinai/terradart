import 'dart:convert';

import 'package:meta/meta.dart';

import '../app_constant.dart';
import '../dart_source.dart';
import '../dart_value_type.dart';
import '../data.dart';
import '../resource.dart';
import '../stack.dart';
import '../tf_arg.dart';
import '../tf_output.dart';
import '../tf_template.dart';
import 'json_encoder.dart';

/// Renders a Stack's [Stack.outputs] as the `output` block and its
/// [Stack.constants] (with [Stack.appExports]) as the generated Dart file.
@internal
abstract final class AppExportsEmitter {
  /// The top-level `output` value, or `null` when the Stack declares none:
  /// the [Stack.outputs], then the [Stack.dartDefineOutputs].
  ///
  /// Assumes [Stack.validate] found no issue, so every dart-define output
  /// resolves.
  static Map<String, Object?>? outputBlock(Stack stack) {
    if (stack.outputs.isEmpty && stack.dartDefineOutputs.isEmpty) return null;
    return {
      for (final MapEntry(key: name, value: o) in stack.outputs.entries)
        name: o.toTfJson(TfJsonEncoder.encodeArg(o.value)),
      for (final MapEntry(key: name, value: d)
          in stack.dartDefineOutputs.entries)
        name: {
          'value': {
            for (final e in dartDefines(stack, d))
              e.name: TfJsonEncoder.encodeArg(e.value!),
          },
          'description': ?d.description,
        },
    };
  }

  /// What the dart-define output [d] of [stack] carries: every
  /// non-sensitive output, or those [DartDefineOutput.only] names, in
  /// order, each as its environment variable and value.
  static List<EnvironmentEntry> dartDefines(Stack stack, DartDefineOutput d) {
    final outputs =
        d.only ??
        [
          for (final MapEntry(:key, :value) in stack.outputs.entries)
            if (!value.sensitive) key,
        ];
    return [
      for (final output in outputs)
        switch (stack.outputs[output]) {
          null => .problem(
            output,
            'Output "$output" is not registered on this Stack.',
          ),
          TfOutput(sensitive: true) => .problem(
            output,
            'Output "$output" is sensitive; a secret never goes into a '
            'client build. Read it from its secret store.',
          ),
          _ => environmentEntry(stack, output),
        },
    ];
  }

  /// The environment variable a non-sensitive [output] of [stack] is read
  /// from by the generated reader's `fromEnvironment` and `fromDartDefine`,
  /// and its value.
  static EnvironmentEntry environmentEntry(Stack stack, String output) {
    final o = stack.outputs[output]!;
    final type = o.valueType;
    final encoded = TfJsonEncoder.encodeArg(o.value);
    if (type is ScalarValueType && type.name == 'String') {
      return switch ((o.value, encoded)) {
        (TfArgLiteral(), final String s) => .new(output, TfArg.literal(s)),
        (TfArgLiteral(), _) => .problem(
          output,
          'Output "$output" is null, which no environment variable holds.',
        ),
        (_, final String s) => .new(output, TfArg.expression<String>(s)),
        _ => throw StateError('Output "$output" encodes to $encoded.'),
      };
    }
    if (o.value is TfArgLiteral) {
      if (_holdsTemplate(encoded)) {
        return .problem(
          output,
          'Output "$output" is a literal holding references; its JSON is '
          'only known at apply. Pass it as one .expression instead.',
        );
      }
      return .new(output, TfArg.literal(jsonEncode(encoded)));
    }
    final template = encoded as String;
    final inner = template.startsWith(r'${') && template.endsWith('}')
        ? template.substring(2, template.length - 1)
        : null;
    if (inner == null || inner.contains(r'${') || !_balanced(inner)) {
      return .problem(
        output,
        'Output "$output" of type ${type.source} is the template '
        '"$template", which has no JSON encoding; make it one '
        r'interpolation ("${...}").',
      );
    }
    return .new(output, TfArg.expression<String>('\${jsonencode($inner)}'));
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
    final readable = [
      for (final MapEntry(key: output, value: o) in stack.outputs.entries)
        if (!o.sensitive) (output: output, o: o),
    ];
    buf.write("""
/// The Terraform outputs of the stack, read when the app runs.
///
/// Each getter reads its output when called, so a reader over an
/// environment that sets only some of the variables serves those. A
/// sensitive output has no getter.
final class $name {
  /// Reads the outputs of `terraform output -json`:
  /// `$name.fromTerraformJson(jsonDecode(stdout) as Map<String, Object?>)`.
  ///
  /// That JSON holds the sensitive outputs in plain text, so never bundle
  /// it into a client app; build a client with [$name.fromDartDefine].
  const $name.fromTerraformJson(Map<String, Object?> outputs)
    : _source = _Source.terraform,
      _terraform = outputs,
      _environment = const {};

  /// Reads environment variables named after the outputs in
  /// SCREAMING_SNAKE_CASE (`ORDERS_TOPIC_ID` for `orders_topic_id`), such as
  /// `Platform.environment`. A `String` output is the variable's value; any
  /// other type is JSON.
  const $name.fromEnvironment(Map<String, String> environment)
    : _source = _Source.environment,
      _terraform = const {},
      _environment = environment;

  /// Reads the same variables as [$name.fromEnvironment] from the values
  /// compiled into the app: `--dart-define-from-file` with the JSON of the
  /// Stack's `addDartDefineOutput` (`terraform output -json dart_defines`),
  /// or `--dart-define=ORDERS_TOPIC_ID=...`.
  const $name.fromDartDefine()
    : _source = _Source.dartDefine,
      _terraform = const {},
      _environment = _dartDefines;

  final _Source _source;
  final Map<String, Object?> _terraform;
  final Map<String, String> _environment;

  static const Map<String, String> _dartDefines = {
""");
    for (final (:output, o: _) in readable) {
      final variable = "'${outputEnvironmentName(output)}'";
      buf.writeln(
        '    if (bool.hasEnvironment($variable)) '
        '$variable: String.fromEnvironment($variable),',
      );
    }
    buf.write(r"""
  };

  Object? _read(String output, String variable, bool json) {
    if (_source == _Source.terraform) {
      final entry = _terraform[output];
      if (entry is Map && entry.containsKey('value')) return entry['value'];
      throw StateError(
        'Terraform output "$output" is missing; apply the stack first.',
      );
    }
    final what = _source == _Source.dartDefine
        ? 'Dart define'
        : 'Environment variable';
    final raw = _environment[variable];
    if (raw == null) {
      throw StateError(
        '$what $variable (Terraform output "$output") is not set.',
      );
    }
    if (!json) return raw;
    try {
      return jsonDecode(raw);
    } on FormatException catch (e) {
      throw StateError(
        '$what $variable (Terraform output "$output") is not JSON: '
        '${e.message}',
      );
    }
  }
""");
    for (final (:output, :o) in readable) {
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

enum _Source { terraform, environment, dartDefine }
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
        return switch (_resolve(stack, ref)) {
          (:final value, problem: null) => type.literal(value),
          (:final problem?, value: _) => throw StateError(
            'Constant "$name": $problem',
          ),
        };
    }
  }

  /// Why the constant [c] of [stack] has no value known at synth, or
  /// `null` when it resolves to a literal of its type.
  static String? constantProblem(Stack stack, RefConstant<Object?> c) {
    final (:value, :problem) = _resolve(stack, c.ref);
    if (problem != null) return problem;
    final type = c.valueType!;
    if (type.conforms(value)) return null;
    return 'it is a ${type.source}, but ${c.ref.bareAddress} is set to '
        '${value.runtimeType} $value.';
  }

  /// The literal [ref]'s attribute is set to, or the problem naming what
  /// the attribute is set by when it is not one.
  static ({Object? value, String? problem}) _resolve(
    Stack stack,
    TfRef<Object?> ref,
  ) {
    ({Object? value, String? problem}) fail(String problem) =>
        (value: null, problem: problem);
    final (owner, attr) = switch (ref) {
      AttributeRef(:final owner, :final attr) => (owner, attr),
      DataRef(:final owner, :final attr) => (owner, attr),
      ResourceRef() => throw StateError('unreachable: checked in addConstant'),
    };
    final address = ref.bareAddress;
    // ignore: invalid_use_of_protected_member
    if (owner is Resource && owner.sensitiveFields.contains(attr)) {
      return fail(
        'it reads $address, a sensitive field; a secret never becomes a '
        "Dart constant. Use addOutput('<name>', <attribute>, sensitive: true) "
        'or read it at runtime.',
      );
    }
    final Map<String, TfArg<dynamic>?> argMap;
    switch (owner) {
      case Data() when stack.dataSources.contains(owner):
        argMap = owner.argMap;
      case Resource() when owner is! Data && stack.resources.contains(owner):
        argMap = owner.argMap;
      default:
        return fail(
          'it reads $address, which is not registered on this Stack; add '
          'it with add(...).',
        );
    }
    final arg = argMap[attr];
    final value = switch (arg) {
      TfArgLiteral(:final value) => _plain(value),
      _ => null,
    };
    if (arg is TfArgLiteral && value != _notPlain) {
      return (value: value, problem: null);
    }
    final setBy = switch (arg) {
      null => 'not set in the Stack (the provider computes it at apply)',
      TfArgLiteral() => 'a literal holding a reference or template',
      TfRef(:final bareAddress) => 'a reference to $bareAddress',
      TfArgVariable(:final name) => 'the variable "$name"',
      TfArgExpression(:final template) => 'the expression $template',
    };
    return fail(
      'it reads $address, which is $setBy — a Dart constant needs a value '
      "known at synth. Use addOutput('<name>', <attribute>) for an apply-time "
      'value.',
    );
  }

  static const Object _notPlain = _NotPlain();

  /// [value] with enums as their Terraform value and nested literals
  /// unwrapped, or [_notPlain] when it holds a reference, a variable, an
  /// expression or a string Terraform would interpolate.
  static Object? _plain(Object? value) {
    switch (value) {
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

/// The environment variable an output is passed in, and its value — or,
/// when the output has none, why.
@internal
final class EnvironmentEntry {
  EnvironmentEntry(String output, TfArg<String> this.value)
    : name = outputEnvironmentName(output),
      problem = null;

  EnvironmentEntry.problem(String output, String this.problem)
    : name = outputEnvironmentName(output),
      value = null;

  /// `ORDERS_TOPIC_ID` for `orders_topic_id`.
  final String name;
  final TfArg<String>? value;
  final String? problem;
}

final class _NotPlain {
  const _NotPlain();
}
