import 'package:meta/meta.dart';

/// One `variable "<name>" { ... }` declaration.
///
/// Register these on a [Stack] with `addVariable`; synth emits the
/// collected declarations under the top-level `variable` key. Declaring
/// a variable is what makes a [TfArgVariable] reference — the
/// `"${var.<name>}"` that `TfArg.variable` produces — resolvable, and
/// synth refuses to emit a config that references an undeclared one.
///
/// ```dart
/// addVariable(
///   'db_password',
///   const TfVariable(type: 'string', sensitive: true),
/// );
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

  /// Terraform type constraint, written the way Terraform writes it:
  /// `'string'`, `'number'`, `'bool'`, `'list(string)'`,
  /// `'map(string)'`, `'object({ name = string })'`. Left null,
  /// Terraform infers `any`.
  final String? type;

  /// Human-readable description, surfaced by `terraform plan` prompts.
  final String? description;

  /// Default value, making the variable optional. Omitted when null —
  /// so a variable with no default is required, which is what a
  /// secret-bearing variable wants.
  final Object? defaultValue;

  /// Marks the value as sensitive so Terraform redacts it from plan and
  /// apply output. Set this on anything that would otherwise trip
  /// `SensitiveLiteralError`.
  final bool? sensitive;

  /// Whether `null` is an accepted value. Terraform defaults to true.
  final bool? nullable;

  /// The `variable "<name>"` block body. The name itself is the map key
  /// synth files this under, not part of the body.
  Map<String, Object?> toTfJson() => {
        if (type != null) 'type': type,
        if (description != null) 'description': description,
        if (defaultValue != null) 'default': defaultValue,
        if (sensitive != null) 'sensitive': sensitive,
        if (nullable != null) 'nullable': nullable,
      };
}
