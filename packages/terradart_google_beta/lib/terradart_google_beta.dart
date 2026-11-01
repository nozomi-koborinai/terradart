// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **google-beta** surface for TerraDart.
///
/// Beta-only `google_*` types from `hashicorp/google-beta`. GA resources
/// live in `package:terradart_google`. Both packages share
/// `terradart_core` and compose in one `Stack` (each provider block is
/// emitted separately). Wrappers pin the `google-beta` provider
/// meta-argument.
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

export 'active_directory.dart';
export 'api_gateway.dart';
export 'artifact_registry.dart';
export 'bigquery.dart';
export 'ces.dart';
export 'chronicle.dart';
export 'compute.dart';
export 'container.dart';
export 'dataflow.dart';
export 'dataform.dart';
export 'dataplex.dart';
export 'firebase.dart';
export 'folder.dart';
export 'identity.dart';
export 'kms.dart';
export 'network.dart';
export 'organization.dart';
export 'os_config.dart';
export 'privileged_access_manager.dart';
export 'project.dart';
export 'provider.dart';
export 'runtimeconfig.dart';
export 'saas_runtime.dart';
export 'security_scanner.dart';
export 'service_usage.dart';
export 'tags.dart';
export 'tpu.dart';
export 'vertex_ai.dart';
