import 'package:meta/meta.dart';

import 'duration_helper.dart';
import 'tf_ref.dart';
import 'tf_template.dart';

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

  /// Convenience: `TfArg.expression(r'${lower(var.name)}-x')` (T inferred)
  /// or `TfArg.expression<int>(r'${var.replicas * 2}')` (explicit).
  ///
  /// A raw Terraform expression, emitted verbatim as the tf.json template
  /// string it is: `${ ... }` interpolations and `%{ ... }` directives are
  /// evaluated by Terraform, and a literal `${` / `%{` in the text must be
  /// escaped as `$${` / `%%{`. Use it for what [literal], [ref] and
  /// [variable] cannot express — function calls, conditionals, `local.x`,
  /// `module.x.y`, `terraform.workspace`. `T` is the Dart type of the
  /// parameter it fills; Terraform converts the evaluated value.
  ///
  /// Like a reference it is accepted in sensitive positions (no plaintext
  /// value is stored in it), and every `var.<name>` it mentions must be
  /// declared on the Stack (`addVariable` / `addExternalVariable`) — synth
  /// checks that, as it does for [variable]. A plain value is not an
  /// expression: `TfArg.expression('x')` throws; use [literal].
  static TfArg<T> expression<T>(String template) =>
      TfArgExpression<T>(template);

  /// Convenience: `TfArg.workspace()` — the name of the selected Terraform
  /// workspace, `${terraform.workspace}`.
  ///
  /// ```dart
  /// name: TfArg.expression(r'my-app-${terraform.workspace}'),
  /// labels: TfArg.literal({'env': TfArg.workspace<String>()}),
  /// ```
  ///
  /// Terraform resolves it per `terraform workspace select`, so a stack that
  /// reads it synthesizes once and plans differently per workspace — nothing
  /// about the state layout or the selection changes. Equivalent to
  /// `TfArg.expression(r'${terraform.workspace}')`; use [expression] to
  /// interpolate it into a larger string.
  static TfArg<T> workspace<T>() => TfArgExpression<T>(workspaceTemplate);

  /// The template [workspace] emits: `${terraform.workspace}`.
  static const String workspaceTemplate = r'${terraform.workspace}';

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
  /// - `TfArgLiteral`    → the actual value (string, int, etc.)
  /// - `TfArgRef`        → an interpolation string `'${...}'`
  /// - `TfArgVariable`   → an interpolation string `'${var.<name>}'`
  /// - `TfArgExpression` → its template string, verbatim
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
  /// Declare the matching `variable "<name>" { ... }` block with
  /// `Stack.addVariable`. Synth throws when a reference has no
  /// declaration, so a typo here fails at synth time rather than at
  /// `terraform plan`.
  final String name;

  @override
  Object? toTfJson() => '\${var.$name}';
}

/// A raw Terraform expression — the tf.json template string, verbatim.
///
/// Construct through [TfArg.expression]. The class is public so callers can
/// pattern-match on it (`switch (arg) { case TfArgExpression(): ... }`) and
/// grep for it.
@immutable
final class TfArgExpression<T> extends TfArg<T> {
  TfArgExpression(this.template) {
    if (!hasTemplateSequence(template)) {
      throw ArgumentError.value(
        template,
        'template',
        'must contain a Terraform interpolation `\${ ... }` or directive '
            '`%{ ... }`; for a plain value use TfArg.literal',
      );
    }
  }

  /// The template as it is written into tf.json: interpolations and
  /// directives are evaluated by Terraform, `$${` / `%%{` are literal.
  final String template;

  /// The `var.<name>` references inside the template's interpolations and
  /// directives; synth requires each to be declared on the Stack.
  Set<String> get referencedVariables => templateVariableNames(template);

  @override
  Object? toTfJson() => template;
}
