import 'package:meta/meta.dart';

import 'tf_ref.dart';

/// IaC ↔ application seam: a value Stack can export to either pure-Dart
/// constants or Terraform `output` blocks (or both).
///
/// `AppExport` is `abstract base class` (not `sealed`) so concrete
/// variants can live across multiple packages — `terradart` ships the
/// v0.0.x set (`StringExport`, `ResourceIdExport`, `ResourceAttributeExport`,
/// `EnvBackedExport`); `terradart_synth` / user code can supply more.
///
/// Synth dispatches via `is`-chains rather than `sealed switch` because
/// cross-package extensibility precludes static exhaustiveness.
abstract base class AppExport {
  const AppExport();

  /// Right-hand side expression for the Dart constant declaration, e.g.
  /// `r'orders-prod'`. Return `null` to opt out of Dart constant emission;
  /// such exports are only emitted as Terraform `output` blocks.
  String? get dartLiteralExpression;

  /// Dart type of the constant, e.g. `'String'` or `'Uri'`.
  String get dartType;

  /// Whether to emit a Terraform `output` block for this export. Always
  /// `true` if `dartLiteralExpression` is `null` and the export is exposable.
  bool get emitTerraformOutput;

  /// Override for the Terraform `output` block name. Defaults to the
  /// `appExports` map key.
  String? get terraformOutputName;

  /// If `true`, the value is omitted from the Dart constants file and the
  /// Terraform `output` block is marked `sensitive = true`.
  bool get sensitive;

  /// Free-form description, copied verbatim into the Terraform `output`
  /// block (and as a `///` doc comment in the Dart constant when present).
  String? get description;
}

/// Static literal string known at synth time.
///
/// **Never sensitive.** `StringExport`'s entire purpose is to emit a Dart
/// constant carrying its value — and the spec (§5.3.1) forbids Dart-constant
/// emission for sensitive values. The constructor therefore offers no
/// `sensitive` parameter, and `sensitive` is hard-coded to `false`. For
/// secrets use `EnvBackedExport` (compile-time `--dart-define`) or
/// `ResourceIdExport` with `sensitive: true` (Terraform-output-only).
///
/// The constructor is non-const so it can validate `value` (no newlines,
/// which would break the `r'...'` raw-string quoting). Use `final` not
/// `const` at the call site:
///
/// ```dart
/// final apiVersion = StringExport('v1');
/// ```
@immutable
final class StringExport extends AppExport {
  StringExport(this.value, {this.description}) {
    if (value.contains('\n') || value.contains('\r')) {
      throw ArgumentError.value(
        value,
        'value',
        'StringExport value must not contain newlines (would break '
            'raw-string quoting in generated Dart constant).',
      );
    }
  }

  final String value;

  @override
  final String? description;

  @override
  String get dartLiteralExpression => "r'$value'";

  @override
  String get dartType => 'String';

  @override
  bool get emitTerraformOutput => false;

  @override
  String? get terraformOutputName => null;

  /// Hard-coded `false`. See class doc — `StringExport` MUST NOT carry
  /// secrets.
  @override
  bool get sensitive => false;
}

/// Export a resource attribute reference (typically `name` / `id` of a
/// resource) as either a Dart constant (when literal-resolvable at synth
/// time) or a Terraform `output` block (when computed).
@immutable
final class ResourceIdExport extends AppExport {
  const ResourceIdExport(
    this.ref, {
    this.description,
    bool emitTerraformOutput = false,
    String? terraformOutputName,
    this.sensitive = false,
  })  : _emitTerraformOutput = emitTerraformOutput,
        _terraformOutputName = terraformOutputName;

  final TfRef<String> ref;

  @override
  final String? description;

  final bool _emitTerraformOutput;
  final String? _terraformOutputName;

  @override
  final bool sensitive;

  /// Always `null` — the literal (if any) is materialised by the synth
  /// pipeline's `LiteralResolver`, not by this object.
  @override
  String? get dartLiteralExpression => null;

  @override
  String get dartType => 'String';

  @override
  bool get emitTerraformOutput => _emitTerraformOutput;

  @override
  String? get terraformOutputName => _terraformOutputName;
}

/// Generic resource-attribute export. Caller supplies the Dart type name
/// and an encoder that turns a resolved literal value into a Dart
/// expression.
///
/// Synth's Pass 2 calls [encodeLiteral] with a literal value recovered
/// from the resource's argMap. The cast `Object? -> T` happens inside
/// [encodeLiteral] so the type-erased call site
/// (`ResourceAttributeExport<dynamic>`) doesn't run into Dart's
/// function-parameter contravariance check.
@immutable
final class ResourceAttributeExport<T> extends AppExport {
  const ResourceAttributeExport({
    required this.ref,
    required this.dartType,
    required this.literalEncoder,
    this.description,
    bool emitTerraformOutput = false,
    String? terraformOutputName,
    this.sensitive = false,
  })  : _emitTerraformOutput = emitTerraformOutput,
        _terraformOutputName = terraformOutputName;

  final TfRef<T> ref;

  @override
  final String dartType;

  /// Caller-supplied function: `T` literal → Dart expression string.
  ///
  /// Prefer [encodeLiteral] — synth uses it to bypass Dart's runtime
  /// parameter-type check on dynamically-typed export slots.
  final String Function(T value) literalEncoder;

  @override
  final String? description;

  final bool _emitTerraformOutput;
  final String? _terraformOutputName;

  @override
  final bool sensitive;

  @override
  String? get dartLiteralExpression => null;

  @override
  bool get emitTerraformOutput => _emitTerraformOutput;

  @override
  String? get terraformOutputName => _terraformOutputName;

  /// Cast [literal] to `T` and invoke [literalEncoder]. Throws
  /// `TypeError` if [literal] is not a `T`. Synth catches this and
  /// re-throws as `StateError` with a contextual message.
  String encodeLiteral(Object? literal) => literalEncoder(literal as T);
}

/// Export resolved at Dart compile time from `--dart-define` / environment
/// variable. Never appears in Terraform outputs.
///
/// Constructor is non-const because it validates `envVarName` (must be
/// non-empty). Use `final`:
///
/// ```dart
/// final apiBase = EnvBackedExport(envVarName: 'API_BASE_URL');
/// ```
@immutable
final class EnvBackedExport extends AppExport {
  EnvBackedExport({
    required this.envVarName,
    this.defaultValue,
    this.description,
  }) {
    if (envVarName.isEmpty) {
      throw ArgumentError.value(
        envVarName,
        'envVarName',
        'must not be empty',
      );
    }
  }

  final String envVarName;
  final String? defaultValue;

  @override
  final String? description;

  @override
  String get dartLiteralExpression {
    if (defaultValue == null) {
      return "const String.fromEnvironment('$envVarName')";
    }
    return "const String.fromEnvironment('$envVarName', defaultValue: r'$defaultValue')";
  }

  @override
  String get dartType => 'String';

  @override
  bool get emitTerraformOutput => false;

  @override
  String? get terraformOutputName => null;

  @override
  bool get sensitive => false;
}
