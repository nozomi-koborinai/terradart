// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job_step`.
const Set<String> _azurermMssqlJobStepSensitive = <String>{};

/// Typed helper for the `output_target` block of
/// `azurerm_mssql_job_step` (derived from provider schema).
@immutable
final class MssqlJobStepOutputTarget {
  const MssqlJobStepOutputTarget({
    this.jobCredentialId,
    required this.mssqlDatabaseId,
    this.schemaName,
    required this.tableName,
  });

  final TfArg<String>? jobCredentialId;

  final TfArg<String> mssqlDatabaseId;

  final TfArg<String>? schemaName;

  final TfArg<String> tableName;

  @internal
  Map<String, Object?> encode() => {
    'job_credential_id': ?jobCredentialId?.toTfJson(),
    'mssql_database_id': mssqlDatabaseId.toTfJson(),
    'schema_name': ?schemaName?.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_job_step`.
final class AzurermMssqlJobStep extends Resource {
  static const String tfType = 'azurerm_mssql_job_step';

  AzurermMssqlJobStep(
    super.localName, {
    TfArg<num>? initialRetryIntervalSeconds,
    TfArg<String>? jobCredentialId,
    required TfArg<String> jobId,
    required TfArg<num> jobStepIndex,
    required TfArg<String> jobTargetGroupId,
    TfArg<num>? maximumRetryIntervalSeconds,
    required TfArg<String> name,
    TfArg<num>? retryAttempts,
    TfArg<num>? retryIntervalBackoffMultiplier,
    required TfArg<String> sqlScript,
    TfArg<num>? timeoutSeconds,
    MssqlJobStepOutputTarget? outputTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'initial_retry_interval_seconds': ?initialRetryIntervalSeconds,
           'job_credential_id': ?jobCredentialId,
           'job_id': jobId,
           'job_step_index': jobStepIndex,
           'job_target_group_id': jobTargetGroupId,
           'maximum_retry_interval_seconds': ?maximumRetryIntervalSeconds,
           'name': name,
           'retry_attempts': ?retryAttempts,
           'retry_interval_backoff_multiplier': ?retryIntervalBackoffMultiplier,
           'sql_script': sqlScript,
           'timeout_seconds': ?timeoutSeconds,
           if (outputTarget != null)
             'output_target': TfArg.literal(outputTarget.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobStepSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJobStep>`.
  RefTo<AzurermMssqlJobStep> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `initial_retry_interval_seconds` attribute.
  TfRef<num> get initialRetryIntervalSeconds =>
      TfRef.attribute<num>(this, 'initial_retry_interval_seconds');

  /// Reference to `job_credential_id` attribute.
  TfRef<String> get jobCredentialId =>
      TfRef.attribute<String>(this, 'job_credential_id');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `job_step_index` attribute.
  TfRef<num> get jobStepIndex => TfRef.attribute<num>(this, 'job_step_index');

  /// Reference to `job_target_group_id` attribute.
  TfRef<String> get jobTargetGroupId =>
      TfRef.attribute<String>(this, 'job_target_group_id');

  /// Reference to `maximum_retry_interval_seconds` attribute.
  TfRef<num> get maximumRetryIntervalSeconds =>
      TfRef.attribute<num>(this, 'maximum_retry_interval_seconds');

  /// Reference to `retry_attempts` attribute.
  TfRef<num> get retryAttempts => TfRef.attribute<num>(this, 'retry_attempts');

  /// Reference to `retry_interval_backoff_multiplier` attribute.
  TfRef<num> get retryIntervalBackoffMultiplier =>
      TfRef.attribute<num>(this, 'retry_interval_backoff_multiplier');

  /// Reference to `sql_script` attribute.
  TfRef<String> get sqlScript => TfRef.attribute<String>(this, 'sql_script');

  /// Reference to `timeout_seconds` attribute.
  TfRef<num> get timeoutSeconds =>
      TfRef.attribute<num>(this, 'timeout_seconds');
}
