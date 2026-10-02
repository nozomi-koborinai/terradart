import 'package:meta/meta.dart';

import 'dart_value_type.dart';
import 'tf_arg.dart';

/// An `output "<name>" { value = ... }` block, registered with
/// `Stack.addOutput`.
@immutable
final class TfOutput<T> {
  const TfOutput(this.value, {this.description, this.sensitive = false});

  /// The output's value: a reference (`topic.id`), an expression, a
  /// variable or a literal.
  final TfArg<T> value;

  final String? description;

  /// `sensitive = true`: Terraform redacts the value in plan output.
  final bool sensitive;

  /// The value's Dart type in the generated reader: [T] when supported,
  /// `Object?` otherwise.
  @internal
  DartValueType get valueType =>
      DartValueType.tryParse('$T') ??
      const ScalarValueType('Object', nullable: true);

  @internal
  Map<String, Object?> toTfJson(Object? encodedValue) => {
    'value': encodedValue,
    if (sensitive) 'sensitive': true,
    'description': ?description,
  };
}

/// An `output` whose value is the client build's `--dart-define` file,
/// registered with `Stack.addDartDefineOutput`.
@immutable
final class DartDefineOutput {
  const DartDefineOutput({this.only, this.description});

  /// The outputs it carries, by name; `null` for every non-sensitive
  /// output of the Stack.
  final List<String>? only;

  final String? description;
}
