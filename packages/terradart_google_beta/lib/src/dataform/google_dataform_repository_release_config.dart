// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_release_config`.
const Set<String> _googleDataformRepositoryReleaseConfigSensitive = <String>{};

/// Typed helper for the `code_compilation_config` block of
/// `google_dataform_repository_release_config` (derived from provider schema).
@immutable
final class DataformRepositoryReleaseConfigCodeCompilationConfig {
  const DataformRepositoryReleaseConfigCodeCompilationConfig({
    this.assertionSchema,
    this.databaseSuffix,
    this.defaultDatabase,
    this.defaultLocation,
    this.defaultSchema,
    this.schemaSuffix,
    this.tablePrefix,
    this.vars,
  });

  final TfArg<String>? assertionSchema;

  final TfArg<String>? databaseSuffix;

  final TfArg<String>? defaultDatabase;

  final TfArg<String>? defaultLocation;

  final TfArg<String>? defaultSchema;

  final TfArg<String>? schemaSuffix;

  final TfArg<String>? tablePrefix;

  final TfArg<Map<String, String>>? vars;

  Map<String, Object?> encode() => {
    if (assertionSchema != null)
      'assertion_schema': assertionSchema!.toTfJson(),
    if (databaseSuffix != null) 'database_suffix': databaseSuffix!.toTfJson(),
    if (defaultDatabase != null)
      'default_database': defaultDatabase!.toTfJson(),
    if (defaultLocation != null)
      'default_location': defaultLocation!.toTfJson(),
    if (defaultSchema != null) 'default_schema': defaultSchema!.toTfJson(),
    if (schemaSuffix != null) 'schema_suffix': schemaSuffix!.toTfJson(),
    if (tablePrefix != null) 'table_prefix': tablePrefix!.toTfJson(),
    if (vars != null) 'vars': vars!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataform_repository_release_config`.
///
/// A resource represents a Dataform release configuration
final class GoogleDataformRepositoryReleaseConfig extends Resource {
  static const String tfType = 'google_dataform_repository_release_config';

  GoogleDataformRepositoryReleaseConfig({
    required super.localName,
    TfArg<String>? cronSchedule,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    required TfArg<String> gitCommitish,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? repository,
    TfArg<String>? timeZone,
    DataformRepositoryReleaseConfigCodeCompilationConfig? codeCompilationConfig,
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
           'git_commitish': gitCommitish,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (repository != null) 'repository': repository,
           if (timeZone != null) 'time_zone': timeZone,
           if (codeCompilationConfig != null)
             'code_compilation_config': TfArg.literal(
               codeCompilationConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryReleaseConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryReleaseConfig>`.
  RefTo<GoogleDataformRepositoryReleaseConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recent_scheduled_release_records` attribute.
  TfRef<List<Map<String, Object?>>> get recentScheduledReleaseRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'recent_scheduled_release_records',
      );
}
