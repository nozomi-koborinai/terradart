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

/// The environment `Stack.outputEnvironment` returns: each variable and its
/// value, in registration order.
///
/// Iterate it where the environment is a list of blocks (a Cloud Run
/// container's `env`, see `Stack.outputEnvironment`), or pass [variables]
/// where it is one map argument:
///
/// ```dart
/// addOutput('table_name', table.name);
/// add(AwsLambdaFunction(
///   'api',
///   functionName: .literal('api'),
///   role: role.ref,
///   runtime: .providedAl2023,
///   handler: .literal('bootstrap'),
///   code: .filename(.literal('build/bootstrap.zip')),
///   environment: .new(variables: outputEnvironment().variables),
/// ));
/// ```
extension type const OutputEnvironment._(
  List<({String name, TfArg<String> value})> _entries
)
    implements Iterable<({String name, TfArg<String> value})> {
  @internal
  const OutputEnvironment(List<({String name, TfArg<String> value})> entries)
    : this._(entries);

  /// The environment as one map argument, such as a Lambda function's
  /// `environment.variables` or a Cloud Function's `environmentVariables`.
  TfArg<Map<String, String>> get variables => TfArg.literal({
    for (final (:name, :value) in _entries)
      name: switch (value.toTfJson()) {
        final String s => s,
        final other => throw StateError(
          'The environment value of $name encodes to $other.',
        ),
      },
  });
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
