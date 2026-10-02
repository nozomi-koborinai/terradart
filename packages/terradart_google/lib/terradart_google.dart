// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// terradart_google — curated GCP factory wrappers for `terradart`.
///
/// Pinned to `hashicorp/google ~> 8.0`. See [kProviderSource] /
/// [kProviderVersionConstraint].
///
/// This umbrella re-exports every per-service barrel. New code is encouraged
/// to import the specific service barrels instead, e.g.
/// `import 'package:terradart_google/pubsub.dart';`, which keeps the IDE
/// auto-complete dropdown service-scoped and isolates name collisions
/// between services.
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

export 'access_context_manager.dart';
export 'active_directory.dart';
export 'agent.dart';
export 'agentic_applications.dart';
export 'alloydb.dart';
export 'apigee.dart';
export 'apihub.dart';
export 'apikeys.dart';
export 'app.dart';
export 'apphub.dart';
export 'artifact_registry.dart';
export 'assured_workloads.dart';
export 'backup_dr.dart';
export 'beyondcorp.dart';
export 'biglake.dart';
export 'bigquery.dart';
export 'bigtable.dart';
export 'billing.dart';
export 'binary_authorization.dart';
export 'blockchain.dart';
export 'certificate_manager.dart';
export 'ces.dart';
export 'chronicle.dart';
export 'cloud_asset.dart';
export 'cloud_build.dart';
export 'cloud_functions.dart';
export 'cloud_ids.dart';
export 'cloud_quotas.dart';
export 'cloud_run.dart';
export 'cloud_scheduler.dart';
export 'cloud_security_compliance.dart';
export 'cloud_sql.dart';
export 'cloud_support.dart';
export 'cloud_tasks.dart';
export 'clouddeploy.dart';
export 'clouddomains.dart';
export 'cloudfunctions.dart';
export 'colab.dart';
export 'composer.dart';
export 'compute.dart';
export 'config.dart';
export 'contact.dart';
export 'container.dart';
export 'container_analysis.dart';
export 'container_attached.dart';
export 'container_aws.dart';
export 'container_azure.dart';
export 'data.dart';
export 'data_catalog.dart';
export 'data_fusion.dart';
export 'database_migration.dart';
export 'dataflow.dart';
export 'dataform.dart';
export 'dataplex.dart';
export 'dataproc.dart';
export 'datastream.dart';
export 'deployment_manager.dart';
export 'developer_connect.dart';
export 'dialogflow.dart';
export 'discovery_engine.dart';
export 'dlp.dart';
export 'dns.dart';
export 'document_ai.dart';
export 'edgecontainer.dart';
export 'edgenetwork.dart';
export 'endpoints.dart';
export 'essential_contacts.dart';
export 'eventarc.dart';
export 'filestore.dart';
export 'firebase_app_check.dart';
export 'firebase_app_hosting.dart';
export 'firebase_data_connect.dart';
export 'firebase_remote_config.dart';
export 'firebaserules.dart';
export 'firestore.dart';
export 'folder.dart';
export 'gemini.dart';
export 'gke_backup.dart';
export 'gkeonprem.dart';
export 'healthcare.dart';
export 'hypercomputecluster.dart';
export 'iam.dart';
export 'iap.dart';
export 'identity.dart';
export 'integration_connectors.dart';
export 'integrations.dart';
export 'kms.dart';
export 'license_manager.dart';
export 'logging.dart';
export 'looker.dart';
export 'lustre.dart';
export 'managed.dart';
export 'memcache.dart';
export 'memorystore.dart';
export 'migration.dart';
export 'model_armor.dart';
export 'monitoring.dart';
export 'netapp.dart';
export 'network.dart';
export 'observability.dart';
export 'oracle.dart';
export 'organization.dart';
export 'os_config.dart';
export 'parallelstore.dart';
export 'parameter_manager.dart';
export 'privateca.dart';
export 'privileged_access_manager.dart';
export 'project.dart';
export 'provider.dart';
export 'public_ca.dart';
export 'pubsub.dart';
export 'pubsub_lite.dart';
export 'recaptcha.dart';
export 'redis.dart';
export 'scc.dart';
export 'secret_manager.dart';
export 'secure.dart';
export 'securityposture.dart';
export 'service_directory.dart';
export 'service_networking.dart';
export 'site_verification.dart';
export 'sourcerepo.dart';
export 'spanner.dart';
export 'storage.dart';
export 'storage_control.dart';
export 'tags.dart';
export 'transcoder.dart';
export 'vector.dart';
export 'vertex_ai.dart';
export 'vmwareengine.dart';
export 'workbench.dart';
export 'workflows.dart';
export 'workstations.dart';
