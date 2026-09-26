// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_engine_version`.
const Set<String> _awsRdsEngineVersionSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_rds_engine_version` (derived from provider schema).
@immutable
final class DataRdsEngineVersionFilter {
  const DataRdsEngineVersionFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_rds_engine_version`.
final class DataAwsRdsEngineVersion extends Data {
  static const String tfType = 'aws_rds_engine_version';

  DataAwsRdsEngineVersion({
    required super.localName,
    TfArg<bool>? defaultOnly,
    required TfArg<String> engine,
    TfArg<bool>? hasMajorTarget,
    TfArg<bool>? hasMinorTarget,
    TfArg<bool>? includeAll,
    TfArg<bool>? latest,
    TfArg<String>? parameterGroupFamily,
    TfArg<List<String>>? preferredMajorTargets,
    TfArg<List<String>>? preferredUpgradeTargets,
    TfArg<List<String>>? preferredVersions,
    TfArg<String>? region,
    TfArg<String>? version,
    List<DataRdsEngineVersionFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultOnly != null) 'default_only': defaultOnly,
           'engine': engine,
           if (hasMajorTarget != null) 'has_major_target': hasMajorTarget,
           if (hasMinorTarget != null) 'has_minor_target': hasMinorTarget,
           if (includeAll != null) 'include_all': includeAll,
           if (latest != null) 'latest': latest,
           if (parameterGroupFamily != null)
             'parameter_group_family': parameterGroupFamily,
           if (preferredMajorTargets != null)
             'preferred_major_targets': preferredMajorTargets,
           if (preferredUpgradeTargets != null)
             'preferred_upgrade_targets': preferredUpgradeTargets,
           if (preferredVersions != null)
             'preferred_versions': preferredVersions,
           if (region != null) 'region': region,
           if (version != null) 'version': version,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsEngineVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_character_set` attribute.
  TfRef<String> get defaultCharacterSet =>
      TfRef.attribute<String>(this, 'default_character_set');

  /// Reference to `engine_description` attribute.
  TfRef<String> get engineDescription =>
      TfRef.attribute<String>(this, 'engine_description');

  /// Reference to `exportable_log_types` attribute.
  TfRef<List<String>> get exportableLogTypes =>
      TfRef.attribute<List<String>>(this, 'exportable_log_types');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `supported_character_sets` attribute.
  TfRef<List<String>> get supportedCharacterSets =>
      TfRef.attribute<List<String>>(this, 'supported_character_sets');

  /// Reference to `supported_feature_names` attribute.
  TfRef<List<String>> get supportedFeatureNames =>
      TfRef.attribute<List<String>>(this, 'supported_feature_names');

  /// Reference to `supported_modes` attribute.
  TfRef<List<String>> get supportedModes =>
      TfRef.attribute<List<String>>(this, 'supported_modes');

  /// Reference to `supported_timezones` attribute.
  TfRef<List<String>> get supportedTimezones =>
      TfRef.attribute<List<String>>(this, 'supported_timezones');

  /// Reference to `supports_certificate_rotation_without_restart` attribute.
  TfRef<bool> get supportsCertificateRotationWithoutRestart =>
      TfRef.attribute<bool>(
        this,
        'supports_certificate_rotation_without_restart',
      );

  /// Reference to `supports_global_databases` attribute.
  TfRef<bool> get supportsGlobalDatabases =>
      TfRef.attribute<bool>(this, 'supports_global_databases');

  /// Reference to `supports_integrations` attribute.
  TfRef<bool> get supportsIntegrations =>
      TfRef.attribute<bool>(this, 'supports_integrations');

  /// Reference to `supports_limitless_database` attribute.
  TfRef<bool> get supportsLimitlessDatabase =>
      TfRef.attribute<bool>(this, 'supports_limitless_database');

  /// Reference to `supports_local_write_forwarding` attribute.
  TfRef<bool> get supportsLocalWriteForwarding =>
      TfRef.attribute<bool>(this, 'supports_local_write_forwarding');

  /// Reference to `supports_log_exports_to_cloudwatch` attribute.
  TfRef<bool> get supportsLogExportsToCloudwatch =>
      TfRef.attribute<bool>(this, 'supports_log_exports_to_cloudwatch');

  /// Reference to `supports_parallel_query` attribute.
  TfRef<bool> get supportsParallelQuery =>
      TfRef.attribute<bool>(this, 'supports_parallel_query');

  /// Reference to `supports_read_replica` attribute.
  TfRef<bool> get supportsReadReplica =>
      TfRef.attribute<bool>(this, 'supports_read_replica');

  /// Reference to `valid_major_targets` attribute.
  TfRef<List<String>> get validMajorTargets =>
      TfRef.attribute<List<String>>(this, 'valid_major_targets');

  /// Reference to `valid_minor_targets` attribute.
  TfRef<List<String>> get validMinorTargets =>
      TfRef.attribute<List<String>>(this, 'valid_minor_targets');

  /// Reference to `valid_upgrade_targets` attribute.
  TfRef<List<String>> get validUpgradeTargets =>
      TfRef.attribute<List<String>>(this, 'valid_upgrade_targets');

  /// Reference to `version_actual` attribute.
  TfRef<String> get versionActual =>
      TfRef.attribute<String>(this, 'version_actual');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');
}
