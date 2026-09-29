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
