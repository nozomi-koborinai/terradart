import 'package:meta/meta.dart';

import 'duration_helper.dart';
import 'tf_template.dart';

part 'tf_ref.dart';

/// A Terraform argument: a Dart-side literal, a reference to another block's
/// attribute ([TfRef]), a variable or a raw expression.
///
/// `T` is the Dart type the factory parameter accepts. Resource factories
/// accept `TfArg<T>` (or `TfArg<T>?`) for every settable field, so an
/// attribute getter fills one as is: `pushEndpoint: api.uri`.
///
/// ## Writing arguments
///
/// <!-- argument-rules:start -->
/// Pick the form by where the value comes from. The argument's type tells you which forms it takes, and a dot shorthand (`.literal`, `.new`, `.providedAl2023`) names the constructor of that type.
///
/// | The value is | Write | Example |
/// |---|---|---|
/// | known when you synth | `.literal(...)` | `functionName: .literal('hello')` |
/// | another resource of this Stack (a `RefTo<R>` input) | its `ref` | `role: role.ref` |
/// | one attribute of another block | its getter | `assumeRolePolicy: trust.json` |
/// | a resource outside this Stack (a `RefTo<R>` input) | `.literal(id)` | `zoneId: .literal('023e105f4ecef8ad9ca31a8372d0c353')` |
/// | one of a fixed set (an enum) | the member | `runtime: .providedAl2023` |
/// | one of several exclusive arguments (a sealed type) | the variant | `code: .filename(.literal('build/fn.zip'))` |
/// | a nested block | its helper class; `.new(...)` inside another block or a variant | `environment: LambdaFunctionEnvironment(...)` |
/// | a Terraform variable | the handle `variable<T>()` returns | `memorySize: memory` |
/// | a variable in an enum or `RefTo<R>` input | `.arg(handle)` | `runtime: .arg(runtimeName)` |
/// | a secret (a `Sensitive<T>` input) | a sensitive variable, never a literal | `value: .value(dbPassword)` |
/// | a reference inside a literal list or map | the getter's `.interpolation` | `{'ROLE_ARN': role.arn.interpolation}` |
/// | anything else Terraform evaluates | `.expression(...)` | `.expression(r'${file("trust.json")}')` |
///
/// ```dart
/// final memory = variable<num>('memory_mb');
/// final runtimeName = variable<String>('runtime');
/// final dbPassword = variable<String>('db_password', sensitive: true);
///
/// final trust = add(
///   DataAwsIamPolicyDocument(
///     'trust',
///     statement: [
///       DataIamPolicyDocumentStatement(
///         actions: .literal(['sts:AssumeRole']),
///         principals: [
///           .new(
///             type: .literal('Service'),
///             identifiers: .literal(['lambda.amazonaws.com']),
///           ),
///         ],
///       ),
///     ],
///   ),
/// );
/// final role = add(AwsIamRole('hello', assumeRolePolicy: trust.json));
/// add(
///   AwsLambdaFunction(
///     'hello',
///     functionName: .literal('hello'),
///     role: role.ref,
///     runtime: .arg(runtimeName),
///     code: .filename(.literal('build/fn.zip')),
///     memorySize: memory,
///     environment: LambdaFunctionEnvironment(
///       variables: .literal({'ROLE_ARN': role.arn.interpolation}),
///     ),
///   ),
/// );
/// add(
///   AwsSsmParameter(
///     'db_password',
///     name: .literal('/hello/db_password'),
///     type: .securestring,
///     value: .value(dbPassword),
///   ),
/// );
/// ```
/// <!-- argument-rules:end -->
sealed class TfArg<T> {
  const TfArg();

  /// A Dart value: `.literal('orders')`, `TfArg.literal('orders')` (T
  /// inferred) or `TfArg<String?>.literal(null)` (explicit). A const
  /// constructor, so a helper built from literals can be `const`.
  const factory TfArg.literal(T value) = TfArgLiteral<T>;

  /// `var.<name>` by name: `.variable('db_password')`.
  ///
  /// `Stack.variable<T>(...)` declares a variable and returns this already,
  /// typed — pass that handle where its type fits. Spell the name out where
  /// it does not: an enum or `RefTo` slot, or a variable of another Dart
  /// type. Synth emits the interpolation `"\${var.<name>}"`; the engine
  /// reads the value when it runs (`terradart apply -- -var '<name>=...'`,
  /// or a `TF_VAR_<name>` environment variable), so it never appears in any
  /// Dart-side artifact.
  static TfArg<T> variable<T>(String name) => TfArgVariable<T>(name);

  /// Convenience: `TfArg.expression(r'${lower(var.name)}-x')` (T inferred)
  /// or `TfArg.expression<int>(r'${var.replicas * 2}')` (explicit).
  ///
  /// A raw Terraform expression, emitted verbatim as the tf.json template
  /// string it is: `${ ... }` interpolations and `%{ ... }` directives are
  /// evaluated by Terraform, and a literal `${` / `%{` in the text must be
  /// escaped as `$${` / `%%{`. Use it for what [literal], [variable] and
  /// an attribute getter cannot express — function calls, conditionals,
  /// `local.x`, `module.x.y`, `terraform.workspace`. `T` is the Dart type of the
  /// parameter it fills; Terraform converts the evaluated value.
  ///
  /// Like a reference it is accepted in sensitive positions (no plaintext
  /// value is stored in it), and every `var.<name>` it mentions must be
  /// declared on the Stack (`variable` / `externalVariable`) — synth
  /// checks that, as it does for [variable]. A plain value is not an
  /// expression: `TfArg.expression('x')` throws; use [literal].
  static TfArg<T> expression<T>(String template) =>
      TfArgExpression<T>(template);

  /// Convenience: `TfArg.workspace()` — the name of the selected Terraform
  /// workspace, `${terraform.workspace}`.
  ///
  /// ```dart
  /// add(GooglePubsubTopic(
  ///   'orders',
  ///   name: .expression(r'orders-${terraform.workspace}'),
  /// ));
  /// addOutput('workspace', TfArg.workspace<String>());
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
  /// add(GoogleKmsCryptoKey(
  ///   'app',
  ///   name: .literal('app'),
  ///   keyRing: .literal('projects/my-project/locations/global/keyRings/app'),
  ///   rotationPeriod: .duration(const Duration(days: 90)),
  ///   // emits "rotation_period": "7776000s"
  /// ));
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
  /// - `TfRef`           → an interpolation string `'${...}'`
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
    if (v is Enum) {
      // A Dart enum has no Terraform value (and `dart:convert` cannot
      // encode it); failing here beats a confusing encoder error later.
      throw ArgumentError(
        'TfArg.literal received the Dart enum value '
        '${v.runtimeType}.${v.name}, which has no Terraform value. Pass '
        'the string Terraform expects (`TfArg.literal(\'...\')`); the '
        'enums the provider packages declare are TfArgs already.',
      );
    }
    return value;
  }
}

/// What an argument Terraform marks sensitive takes: a variable, an
/// expression or an attribute getter — a value Terraform resolves, never a
/// Dart literal that would be written into `main.tf.json`.
///
/// ```dart
/// final dbPassword = variable<String>('db_password', sensitive: true);
/// add(
///   GoogleSqlUser(
///     'app',
///     instance: primary.ref,
///     name: .literal('app'),
///     password: dbPassword, // or .variable('db_password')
///   ),
/// );
/// ```
///
/// There is no `.literal`: `password: .literal('pw')` does not compile.
sealed class Sensitive<T> implements TfArg<T> {
  /// `var.<name>`, as [TfArg.variable].
  factory Sensitive.variable(String name) = TfArgVariable<T>;

  /// A Terraform expression, as [TfArg.expression].
  factory Sensitive.expression(String template) = TfArgExpression<T>;
}

@immutable
final class TfArgVariable<T> extends TfArg<T> implements Sensitive<T> {
  TfArgVariable(this.name) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
  }

  /// Terraform variable name. Emitted as `"\${var.<name>}"` so consumers
  /// can supply the value when the engine runs:
  /// `terradart apply -- -var '<name>=...'`, or a `TF_VAR_<name>`
  /// environment variable.
  ///
  /// `Stack.variable` declares the matching `variable "<name>" { ... }`
  /// block. Synth throws when a reference has no declaration, so a typo
  /// here fails at synth time rather than at `terraform plan`.
  final String name;

  /// `${var.<name>}`, for building a string around the variable:
  /// `.expression('gs://${bucket.interpolation}/data')`.
  String get interpolation => '\${var.$name}';

  @override
  Object? toTfJson() => interpolation;
}

/// A raw Terraform expression — the tf.json template string, verbatim.
///
/// Construct through [TfArg.expression]. The class is public so callers can
/// pattern-match on it (`switch (arg) { case TfArgExpression(): ... }`) and
/// grep for it.
@immutable
final class TfArgExpression<T> extends TfArg<T> implements Sensitive<T> {
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
