// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **Azure** surface for TerraDart (official
/// `hashicorp/azurerm` Terraform provider).
///
/// The catalog at the current provider pin
/// (`kAzureProviderVersionConstraint`) is filled — every resource and
/// data source in that schema has a factory. Credentials never appear
/// in synth output: authentication happens at apply time via `ARM_*`
/// environment variables.
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

export 'aadb2c.dart';
export 'active_directory.dart';
export 'advanced.dart';
export 'advisor.dart';
export 'ai.dart';
export 'analysis.dart';
export 'api_management.dart';
export 'app_configuration.dart';
export 'app_service.dart';
export 'application_insights.dart';
export 'arc.dart';
export 'attestation.dart';
export 'automanage.dart';
export 'automation.dart';
export 'backup.dart';
export 'bastion.dart';
export 'batch.dart';
export 'billing.dart';
export 'blueprint.dart';
export 'bot.dart';
export 'cdn.dart';
export 'chaos.dart';
export 'cognitive.dart';
export 'communication.dart';
export 'compute.dart';
export 'confidential.dart';
export 'consumption.dart';
export 'container_app.dart';
export 'container_group.dart';
export 'container_registry.dart';
export 'cosmosdb.dart';
export 'cost.dart';
export 'custom_provider.dart';
export 'dashboard.dart';
export 'data.dart';
export 'data_factory.dart';
export 'data_protection.dart';
export 'data_share.dart';
export 'database.dart';
export 'databox.dart';
export 'databricks.dart';
export 'datadog.dart';
export 'dev_center.dart';
export 'dev_test.dart';
export 'digital.dart';
export 'dns.dart';
export 'dynatrace.dart';
export 'elastic.dart';
export 'email.dart';
export 'eventgrid.dart';
export 'eventhub.dart';
export 'express.dart';
export 'extended.dart';
export 'fabric.dart';
export 'federated.dart';
export 'firewall.dart';
export 'fluid.dart';
export 'frontdoor.dart';
export 'graph.dart';
export 'hdinsight.dart';
export 'healthbot.dart';
export 'healthcare.dart';
export 'identity.dart';
export 'iot.dart';
export 'iotcentral.dart';
export 'iothub.dart';
export 'ip.dart';
export 'key_vault.dart';
export 'kubernetes.dart';
export 'kusto.dart';
export 'lb.dart';
export 'lighthouse.dart';
export 'load_test.dart';
export 'log_analytics.dart';
export 'logic.dart';
export 'machine_learning.dart';
export 'maintenance.dart';
export 'managed_application.dart';
export 'managed_devops.dart';
export 'managed_lustre.dart';
export 'managed_redis.dart';
export 'management.dart';
export 'maps.dart';
export 'marketplace.dart';
export 'mongo.dart';
export 'monitor.dart';
export 'mssql.dart';
export 'mysql.dart';
export 'nat.dart';
export 'netapp.dart';
export 'network.dart';
export 'new_relic.dart';
export 'nginx.dart';
export 'notification.dart';
export 'oracle.dart';
export 'palo_alto.dart';
export 'pim.dart';
export 'playwright.dart';
export 'policy.dart';
export 'portal.dart';
export 'postgresql.dart';
export 'powerbi.dart';
export 'private_dns.dart';
export 'provider.dart';
export 'purview.dart';
export 'qumulo.dart';
export 'recovery.dart';
export 'redhat.dart';
export 'redis.dart';
export 'relay.dart';
export 'resource.dart';
export 'role.dart';
export 'route.dart';
export 'search.dart';
export 'security.dart';
export 'sentinel.dart';
export 'service_fabric.dart';
export 'servicebus.dart';
export 'signalr.dart';
export 'site_recovery.dart';
export 'source_control.dart';
export 'spring_cloud.dart';
export 'stack_hci.dart';
export 'static_web_app.dart';
export 'storage.dart';
export 'stream_analytics.dart';
export 'subnet.dart';
export 'subscription.dart';
export 'synapse.dart';
export 'system_center.dart';
export 'tenant.dart';
export 'traffic.dart';
export 'trusted.dart';
export 'video.dart';
export 'virtual_desktop.dart';
export 'virtual_wan.dart';
export 'vmware.dart';
export 'vpn.dart';
export 'web.dart';
export 'web_pubsub.dart';
export 'workloads.dart';
