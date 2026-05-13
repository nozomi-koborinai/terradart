import 'package:meta/meta.dart';

import 'tf_ref.dart';

/// A Terraform argument: either a Dart-side literal or a Terraform-side
/// reference.
///
/// `T` is the schemantic-side Dart type. Resource factories accept
/// `TfArg<T>` (or `TfArg<T>?`) for every settable field.
sealed class TfArg<T> {
  const TfArg();

  /// Convenience: `TfArg.literal('orders')` (T inferred) or
  /// `TfArg.literal<String>('orders')` (explicit).
  ///
  /// Implemented as a static method (rather than a redirecting `const
  /// factory`) so callers may pass an explicit type argument after the
  /// member name. `const TfArgLiteral<T>(value)` remains usable for
  /// callers that need a `const` expression.
  static TfArg<T> literal<T>(T value) => TfArgLiteral<T>(value);

  /// Convenience: `TfArg.ref(topic.nameRef)`.
  static TfArg<T> ref<T>(TfRef<T> ref) => TfArgRef<T>(ref);

  /// Value to pass to schemantic concrete constructor.
  ///
  /// - `TfArgLiteral` → the actual value
  /// - `TfArgRef`     → a typed dummy from `placeholderFor<T>()`
  T get literalOrPlaceholder;

  /// Value emitted into Terraform JSON.
  ///
  /// - `TfArgLiteral` → the actual value (string, int, etc.)
  /// - `TfArgRef`     → an interpolation string `'${...}'`
  Object? toTfJson();
}

@immutable
final class TfArgLiteral<T> extends TfArg<T> {
  const TfArgLiteral(this.value);

  final T value;

  @override
  T get literalOrPlaceholder => value;

  @override
  Object? toTfJson() {
    final v = value;
    if (v is Enum) {
      // Phase 4.5.1 (TG-4): Dart enums aren't JSON-encodable by default
      // (`dart:convert` would throw "Converting object to an encodable
      // object failed: Instance of '<Enum>'"). Convention: any enum that
      // ships a `String terraformValue` getter is encoded as that value.
      // Detected via dynamic dispatch — no terradart_core ↔ user-defined-
      // enum interface coupling, but the no-getter case is a clear error
      // (silent wrong output is worse).
      final dyn = v as dynamic;
      try {
        // ignore: avoid_dynamic_calls
        final tv = dyn.terraformValue;
        if (tv is String) return tv;
      } on NoSuchMethodError {
        // fall through to ArgumentError below
      }
      throw ArgumentError(
        'TfArg.literal received an Enum value '
        '${v.runtimeType}.${v.name} but ${v.runtimeType} does not '
        'expose a `String terraformValue` getter. Add '
        '`final String terraformValue;` to the enum (with a '
        '`const X(this.terraformValue);` constructor) or pass '
        '`TfArg.literal(value.someStringGetter)` explicitly.',
      );
    }
    return value;
  }
}

@immutable
final class TfArgRef<T> extends TfArg<T> {
  const TfArgRef(this.ref);

  final TfRef<T> ref;

  @override
  T get literalOrPlaceholder => ref.placeholder;

  @override
  Object? toTfJson() => ref.interpolation;
}
