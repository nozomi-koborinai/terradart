// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **Appwrite** surface for TerraDart (official
/// `appwrite/appwrite` Terraform provider).
///
/// The catalog at the current provider pin
/// (`kAppwriteProviderVersionConstraint`) is filled — every resource and
/// data source in that schema has a factory. A type a later pin adds
/// arrives with the weekly schema bump. Credentials never appear in
/// synth output: authentication happens at apply time via APPWRITE_API_KEY
/// / APPWRITE_ORGANIZATION_API_KEY environment variables.
///
/// This umbrella re-exports every per-service barrel. Prefer the
/// per-service imports in new code.
///
/// ## Writing arguments
///
/// <!-- argument-rules:start -->
/// Pick the form by where the value comes from. The argument's type tells you which forms it takes, and a dot shorthand (`.literal`, `.new`, `.providedAl2023`) names the constructor of that type.
///
/// | The value is | Write |
/// |---|---|
/// | known when you synth | `.literal(...)` |
/// | another resource of this Stack (a `RefTo<R>` input) | its `ref` |
/// | one attribute of another block | its getter |
/// | a resource outside this Stack (a `RefTo<R>` input) | `.literal(...)` with its name, ID or ARN |
/// | one of a fixed set (an enum) | the member |
/// | one of several exclusive arguments (a sealed type) | the variant |
/// | a nested block | its helper class; `.new(...)` inside another block or a variant |
/// | a Terraform variable | the handle `variable<T>()` returns |
/// | a variable in an enum or `RefTo<R>` input | `.arg(handle)` |
/// | a secret (a `Sensitive<T>` input) | a sensitive variable, never a literal |
/// | a reference inside a literal list or map | the getter's `.interpolation` |
/// | anything else Terraform evaluates | `.expression(...)` |
///
/// Each row is an argument of this Stack body, marked with its row:
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
///         actions: .literal(['sts:AssumeRole']), // known when you synth
///         principals: [
///           // a nested block inside another block
///           .new(
///             type: .literal('Service'),
///             identifiers: .literal(['lambda.amazonaws.com']),
///           ),
///         ],
///       ),
///     ],
///   ),
/// );
/// // one attribute of another block
/// final role = add(AwsIamRole('hello', assumeRolePolicy: trust.json));
/// add(
///   AwsLambdaFunction(
///     'hello',
///     functionName: .literal('hello'),
///     role: role.ref, // another resource of this Stack
///     runtime: .arg(runtimeName), // a variable in an enum input
///     code: .filename(.literal('build/fn.zip')), // a variant
///     memorySize: memory, // a Terraform variable
///     // a nested block
///     environment: LambdaFunctionEnvironment(
///       // a reference inside a literal map
///       variables: .literal({'ROLE_ARN': role.arn.interpolation}),
///     ),
///   ),
/// );
/// add(
///   AwsSsmParameter(
///     'db_password',
///     name: .literal('/hello/db_password'),
///     type: .securestring, // one of a fixed set
///     keyId: .literal('alias/aws/ssm'), // a resource outside this Stack
///     value: .value(dbPassword), // a secret
///   ),
/// );
/// add(
///   AwsIamRole(
///     'deploy',
///     // anything else Terraform evaluates
///     assumeRolePolicy: .expression(r'${file("trust.json")}'),
///   ),
/// );
/// ```
/// <!-- argument-rules:end -->
library;

export 'auth.dart';
export 'backups.dart';
export 'data.dart';
export 'documentsdb.dart';
export 'domain.dart';
export 'functions.dart';
export 'messaging.dart';
export 'mongo.dart';
export 'mysql.dart';
export 'postgresql.dart';
export 'project.dart';
export 'provider.dart';
export 'proxy.dart';
export 'sites.dart';
export 'storage.dart';
export 'tablesdb.dart';
export 'vectorsdb.dart';
export 'waf.dart';
export 'webhooks.dart';
