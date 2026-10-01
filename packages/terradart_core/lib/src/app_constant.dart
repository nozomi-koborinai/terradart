import 'package:meta/meta.dart';

import 'dart_value_type.dart';
import 'tf_arg.dart';

/// A value the Stack hands to application code as a `static const` in the
/// generated [AppExports] file — known when synth runs, so the app compiles
/// against it.
///
/// Register one with `Stack.addConstant` and pick the source with a dot
/// shorthand:
///
/// ```dart
/// addConstant('ordersTopicName', .ref(topic.name)); // the topic's literal name
/// addConstant('apiVersion', .value('v1'));             // a value of no resource
/// addConstant('apiBase', .fromEnvironment('API_BASE_URL'));
/// ```
///
/// [T] is the constant's Dart type: `String`, `int`, `double`, `num`,
/// `bool`, `Object`, or a `List` / `String`-keyed `Map` of them, each
/// optionally nullable.
@immutable
sealed class AppConstant<T> {
  const AppConstant({this.description});

  /// The literal an attribute of this Stack is set to:
  /// `.ref(topic.name)` for `name: .literal('orders-prod')` becomes
  /// `static const String ordersTopicName = r'orders-prod';`.
  ///
  /// Synth fails when the attribute is not a literal — set by a reference,
  /// a variable or an expression, or left for the provider to compute —
  /// or is a sensitive field: a constant must be known before apply and
  /// must not put a secret into source. For an apply-time value use
  /// `Stack.addOutput`.
  const factory AppConstant.ref(TfRef<T> ref, {String? description}) =
      RefConstant<T>;

  /// A value that belongs to no resource, such as an API version. For a
  /// value a resource also uses, prefer [AppConstant.ref] on that resource's
  /// attribute, so the value is written once.
  const factory AppConstant.value(T value, {String? description}) =
      ValueConstant<T>;

  /// `const String.fromEnvironment(name)`: read at the app's compile time
  /// from `--define=<name>=...`, never at synth.
  static AppConstant<String> fromEnvironment(
    String name, {
    String? defaultValue,
    String? description,
  }) => EnvironmentConstant(
    name,
    defaultValue: defaultValue,
    description: description,
  );

  /// Copied into the generated constant's `///` doc comment.
  final String? description;

  /// The constant's Dart type, or `null` when [T] is not supported.
  @internal
  DartValueType? get valueType => DartValueType.tryParse('$T');
}

/// The [AppConstant.ref] choice.
final class RefConstant<T> extends AppConstant<T> {
  const RefConstant(this.ref, {super.description});

  final TfRef<T> ref;
}

/// The [AppConstant.value] choice.
final class ValueConstant<T> extends AppConstant<T> {
  const ValueConstant(this.value, {super.description});

  final T value;
}

/// The [AppConstant.fromEnvironment] choice.
final class EnvironmentConstant extends AppConstant<String> {
  EnvironmentConstant(this.name, {this.defaultValue, super.description}) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
    if (_unsafeInLiteral.hasMatch(name)) {
      throw ArgumentError.value(
        name,
        'name',
        r"must not contain quotes, backslashes, `$`, or control characters",
      );
    }
  }

  /// Characters that would break or alter the single-quoted literal the
  /// variable name is written into.
  static final RegExp _unsafeInLiteral = RegExp(r"['\\$\x00-\x1f\x7f]");

  /// The `--define` name.
  final String name;

  /// The value when [name] is not defined; `''` when `null`.
  final String? defaultValue;
}
