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

  @internal
  Map<String, Object?> encode() => {
    'assertion_schema': ?assertionSchema?.toTfJson(),
    'database_suffix': ?databaseSuffix?.toTfJson(),
    'default_database': ?defaultDatabase?.toTfJson(),
    'default_location': ?defaultLocation?.toTfJson(),
    'default_schema': ?defaultSchema?.toTfJson(),
    'schema_suffix': ?schemaSuffix?.toTfJson(),
    'table_prefix': ?tablePrefix?.toTfJson(),
    'vars': ?vars?.toTfJson(),
  };
}

/// Factory wrapper for `google_dataform_repository_release_config`.
///
/// A resource represents a Dataform release configuration
final class GoogleDataformRepositoryReleaseConfig extends Resource {
  static const String tfType = 'google_dataform_repository_release_config';

  GoogleDataformRepositoryReleaseConfig(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cron_schedule': ?cronSchedule,
           'deletion_policy': ?deletionPolicy,
           'disabled': ?disabled,
           'git_commitish': gitCommitish,
           'name': name,
           'project': ?project,
           'region': ?region,
           'repository': ?repository,
           'time_zone': ?timeZone,
           if (codeCompilationConfig != null)
             'code_compilation_config': TfArg.literal(
               codeCompilationConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryReleaseConfigSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryReleaseConfig>`.
  RefTo<GoogleDataformRepositoryReleaseConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recent_scheduled_release_records` attribute.
  TfRef<List<Map<String, Object?>>> get recentScheduledReleaseRecords =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'recent_scheduled_release_records',
      );

  /// Reference to `cron_schedule` attribute.
  TfRef<String> get cronSchedule =>
      TfRef.attribute<String>(this, 'cron_schedule');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `git_commitish` attribute.
  TfRef<String> get gitCommitish =>
      TfRef.attribute<String>(this, 'git_commitish');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
