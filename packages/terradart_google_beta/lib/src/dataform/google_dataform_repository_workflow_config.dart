// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleServiceAccount;

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

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<bool>? transitiveDependenciesIncluded;

  final TfArg<bool>? transitiveDependentsIncluded;

  final List<DataformRepositoryWorkflowConfigInvocationConfigIncludedTargets>?
  includedTargets;

  Map<String, Object?> encode() => {
    'fully_refresh_incremental_tables_enabled':
        ?fullyRefreshIncrementalTablesEnabled?.toTfJson(),
    'included_tags': ?includedTags?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'transitive_dependencies_included': ?transitiveDependenciesIncluded
        ?.toTfJson(),
    'transitive_dependents_included': ?transitiveDependentsIncluded?.toTfJson(),
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
    'database': ?database?.toTfJson(),
    'name': ?name?.toTfJson(),
    'schema': ?schema?.toTfJson(),
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
           'cron_schedule': ?cronSchedule,
           'deletion_policy': ?deletionPolicy,
           'disabled': ?disabled,
           'name': name,
           'project': ?project,
           'region': ?region,
           'release_config': releaseConfig,
           'repository': ?repository,
           'time_zone': ?timeZone,
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
