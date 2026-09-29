// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_workflow_config`.
const Set<String> _googleDataformRepositoryWorkflowConfigSensitive = <String>{};

/// Typed helper for the `invocation_config` block of
/// `google_dataform_repository_workflow_config` (derived from provider schema).
@immutable
final class DataformRepositoryWorkflowConfigInvocationConfig {
  const DataformRepositoryWorkflowConfigInvocationConfig({
    this.fullyRefreshIncrementalTablesEnabled,
    this.includedTags,
    this.serviceAccount,
    this.transitiveDependenciesIncluded,
    this.transitiveDependentsIncluded,
    this.includedTargets,
  });

  final TfArg<bool>? fullyRefreshIncrementalTablesEnabled;

  final TfArg<List<Object?>>? includedTags;

  final TfArg<String>? serviceAccount;

  final TfArg<bool>? transitiveDependenciesIncluded;

  final TfArg<bool>? transitiveDependentsIncluded;

  final List<DataformRepositoryWorkflowConfigInvocationConfigIncludedTargets>?
  includedTargets;

  Map<String, Object?> encode() => {
    if (fullyRefreshIncrementalTablesEnabled != null)
      'fully_refresh_incremental_tables_enabled':
          fullyRefreshIncrementalTablesEnabled!.toTfJson(),
    if (includedTags != null) 'included_tags': includedTags!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (transitiveDependenciesIncluded != null)
      'transitive_dependencies_included': transitiveDependenciesIncluded!
          .toTfJson(),
    if (transitiveDependentsIncluded != null)
      'transitive_dependents_included': transitiveDependentsIncluded!
          .toTfJson(),
    if (includedTargets != null)
      'included_targets': [for (final e in includedTargets!) e.encode()],
  };
}

/// Typed helper for the `invocation_config.included_targets` block of
/// `google_dataform_repository_workflow_config` (derived from provider schema).
@immutable
final class DataformRepositoryWorkflowConfigInvocationConfigIncludedTargets {
  const DataformRepositoryWorkflowConfigInvocationConfigIncludedTargets({
    this.database,
    this.name,
    this.schema,
  });

  final TfArg<String>? database;

  final TfArg<String>? name;

  final TfArg<String>? schema;

  Map<String, Object?> encode() => {
    if (database != null) 'database': database!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (schema != null) 'schema': schema!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataform_repository_workflow_config`.
///
/// A resource represents a Dataform workflow configuration
final class GoogleDataformRepositoryWorkflowConfig extends Resource {
  static const String tfType = 'google_dataform_repository_workflow_config';

  GoogleDataformRepositoryWorkflowConfig({
    required super.localName,
    TfArg<String>? cronSchedule,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> releaseConfig,
    TfArg<String>? repository,
    TfArg<String>? timeZone,
    DataformRepositoryWorkflowConfigInvocationConfig? invocationConfig,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (cronSchedule != null) 'cron_schedule': cronSchedule,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disabled != null) 'disabled': disabled,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'release_config': releaseConfig,
           if (repository != null) 'repository': repository,
           if (timeZone != null) 'time_zone': timeZone,
           if (invocationConfig != null)
             'invocation_config': TfArg.literal(invocationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryWorkflowConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryWorkflowConfig>`.
  RefTo<GoogleDataformRepositoryWorkflowConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recent_scheduled_execution_records` attribute.
  TfRef<List<Map<String, Object?>>> get recentScheduledExecutionRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'recent_scheduled_execution_records',
      );
}
