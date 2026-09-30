import 'package:meta/meta.dart';

import '../app_constant.dart';
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

  /// The generated Dart source, or `null` when the Stack has no
  /// [Stack.appExports] file.
  static String? dartSource(Stack stack) {
    final file = stack.appExports;
    if (file == null) return null;
    final prefix = file.name ?? _className(stack);
    final constants = '${prefix}Constants';

    final buf = StringBuffer()
      ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
      ..writeln('// terradart synth output for stack: ${stack.runtimeType}')
      ..writeln('// dart format off')
      ..writeln('// ignore_for_file: type=lint')
      ..writeln()
      ..writeln('/// The constants of the stack, known when synth ran.')
      ..writeln('abstract final class $constants {')
      ..writeln('  $constants._();');
    for (final MapEntry(key: name, value: c) in stack.constants.entries) {
      buf.writeln();
      _doc(buf, c.description);
      buf.writeln(
        '  static const ${c.valueType!.source} $name = '
        '${_constantLiteral(stack, name, c)};',
      );
    }
    buf.writeln('}');
    return buf.toString();
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
