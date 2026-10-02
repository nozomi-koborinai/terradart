// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **Cloudflare** surface for TerraDart (official
/// `cloudflare/cloudflare` Terraform provider).
///
/// The catalog at the current provider pin
/// (`kCloudflareProviderVersionConstraint`) is filled — every resource
/// and data source in that schema has a typed factory.
/// Nested plugin-framework objects are Dart helper classes, not
/// `TfArg<Map<String, dynamic>>`. The weekly schema bump gives every
/// name a later pin adds a factory with a default override. Credentials
/// never appear in synth output:
/// authentication happens at apply time via CLOUDFLARE_* environment
/// variables.
///
/// This umbrella re-exports every per-service barrel. Prefer the
/// per-service imports in new code.
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
library;

export 'access.dart';
export 'account.dart';
export 'address_map.dart';
export 'ai.dart';
export 'api_shield.dart';
export 'argo.dart';
export 'byo_ip.dart';
export 'cache.dart';
export 'calls.dart';
export 'cloud_connector.dart';
export 'cloudforce_one.dart';
export 'connectivity.dart';
export 'ct.dart';
export 'custom_hostname.dart';
export 'd1.dart';
export 'data.dart';
export 'dls.dart';
export 'dns.dart';
export 'email.dart';
export 'field.dart';
export 'flagship.dart';
export 'google_tag.dart';
export 'healthcheck.dart';
export 'hyperdrive.dart';
export 'image.dart';
export 'load_balancer.dart';
export 'logs.dart';
export 'magic.dart';
export 'moq.dart';
export 'nel.dart';
export 'notifications.dart';
export 'observatory.dart';
export 'origin.dart';
export 'pages.dart';
export 'pipeline.dart';
export 'precursor.dart';
export 'provider.dart';
export 'queues.dart';
export 'r2.dart';
export 'regional.dart';
export 'registrar.dart';
export 'rules.dart';
export 'secrets.dart';
export 'security.dart';
export 'share.dart';
export 'snippet.dart';
export 'spectrum.dart';
export 'ssl.dart';
export 'stream.dart';
export 'transforms.dart';
export 'turnstile.dart';
export 'user.dart';
export 'waiting_room.dart';
export 'web3.dart';
export 'web_analytics.dart';
export 'workers.dart';
export 'workflow.dart';
export 'zero_trust.dart';
export 'zone.dart';
