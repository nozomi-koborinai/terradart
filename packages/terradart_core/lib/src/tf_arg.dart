import 'package:meta/meta.dart';

import 'duration_helper.dart';
import 'tf_ref.dart';

/// Implemented by every codegen-emitted Dart enum whose values map to
/// Terraform string literals (e.g. `KmsKeyPurpose.encryptDecrypt` →
/// `'ENCRYPT_DECRYPT'`).
///
/// `TfArg.literal` dispatches on this interface to encode enum payloads
/// statically; the duck-typed `dynamic` cast it previously relied on is
/// retired. The interface is non-generic — the underlying enum type is
/// encoded by the `enum` declaration that implements it.
abstract interface class TerraformEnum {
  /// The Terraform-side string literal this enum value encodes to.
  /// Convention: emitted exactly as it appears in provider docs (typically
  /// `SCREAMING_SNAKE_CASE` for GCP).
  String get terraformValue;
}

/// A Terraform argument: either a Dart-side literal or a Terraform-side
/// reference.
///
/// `T` is the Dart type the factory parameter accepts. Resource factories
/// accept `TfArg<T>` (or `TfArg<T>?`) for every settable field.
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

  /// Convenience: `TfArg.variable('db_password')` (T inferred) or
  /// `TfArg.variable<String>('db_password')` (explicit).
  ///
  /// Use this for sensitive runtime values supplied via
  /// `terraform apply -var '...'`. Synth emits the interpolation
  /// `"\${var.<name>}"`; the literal value never appears in any
  /// Dart-side artifact.
  static TfArg<T> variable<T>(String name) => TfArgVariable<T>(name);

  /// Convenience for Terraform duration-string fields
  /// (`rotation_period`, `message_retention_duration`, `ack_deadline_seconds`
  /// when expressed in string-seconds form, etc.).
  ///
  /// ```dart
  /// rotationPeriod: TfArg.duration(const Duration(days: 90)),
  /// // emits "rotation_period": "7776000s"
  /// ```
  ///
  /// Equivalent to `TfArg.literal(duration.toTfDurationString())` — the
  /// returned [TfArg] is a `TfArgLiteral<String>` whose payload is the
  /// `"${inSeconds}s"` representation produced by [TerraformDurationExt].
  /// Throws [ArgumentError] for negative or sub-second durations.
  static TfArg<String> duration(Duration duration) =>
      TfArgLiteral<String>(duration.toTfDurationString());

  /// Value emitted into Terraform JSON.
  ///
  /// - `TfArgLiteral`  → the actual value (string, int, etc.)
  /// - `TfArgRef`      → an interpolation string `'${...}'`
  /// - `TfArgVariable` → an interpolation string `'${var.<name>}'`
  Object? toTfJson();
}

@immutable
final class TfArgLiteral<T> extends TfArg<T> {
  const TfArgLiteral(this.value);

  final T value;

  @override
  Object? toTfJson() {
    final v = value;
    // v0.11.0 (ADR-0016): enum dispatch goes through the
    // [TerraformEnum] interface, replacing the prior duck-typed `dynamic`
    // cast. The interface check sits ahead of the `Enum` check so flow
    // analysis can narrow `v` directly (a TerraformEnum is always an Enum
    // in practice, but the language doesn't track that, so we'd otherwise
    // need an explicit cast after `v is Enum`).
    if (v is TerraformEnum) {
      return v.terraformValue;
    }
    if (v is Enum) {
      // Dart enums aren't JSON-encodable by default (`dart:convert` would
      // throw "Converting object to an encodable object failed: Instance
      // of '<Enum>'"). Any enum that reaches this branch lacks the
      // [TerraformEnum] interface — that's a hard error, since silent
      // wrong output is worse than a clear ArgumentError at synth time.
      throw ArgumentError(
        'TfArg.literal received an Enum value '
        '${v.runtimeType}.${v.name} but ${v.runtimeType} does not '
        'implement `TerraformEnum`. Add `implements TerraformEnum` to '
        'the enum declaration (with a `final String terraformValue;` '
        'field and `const X(this.terraformValue);` constructor) or pass '
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
  Object? toTfJson() => ref.interpolation;
}

@immutable
final class TfArgVariable<T> extends TfArg<T> {
  TfArgVariable(this.name) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
  }

  /// Terraform variable name. Emitted as `"\${var.<name>}"` so consumers
  /// can supply the value at `terraform apply -var '<name>=...'` time.
  ///
  /// The consumer is responsible for declaring the matching
  /// `variable "<name>" { ... }` block in a `variables.tf` (or via a
  /// future `Stack.variables` API; v1.x candidate).
  final String name;

  @override
  Object? toTfJson() => '\${var.$name}';
}
