// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_engine_version`.
const Set<String> _awsNeptuneEngineVersionSensitive = <String>{};

/// Factory wrapper for `aws_neptune_engine_version`.
final class DataAwsNeptuneEngineVersion extends Data {
  static const String tfType = 'aws_neptune_engine_version';

  DataAwsNeptuneEngineVersion({
    required super.localName,
    TfArg<bool>? defaultOnly,
    TfArg<String>? engine,
    TfArg<bool>? hasMajorTarget,
    TfArg<bool>? hasMinorTarget,
    TfArg<bool>? latest,
    TfArg<String>? parameterGroupFamily,
    TfArg<List<String>>? preferredMajorTargets,
    TfArg<List<String>>? preferredUpgradeTargets,
    TfArg<List<String>>? preferredVersions,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultOnly != null) 'default_only': defaultOnly,
           if (engine != null) 'engine': engine,
           if (hasMajorTarget != null) 'has_major_target': hasMajorTarget,
           if (hasMinorTarget != null) 'has_minor_target': hasMinorTarget,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneEngineVersionSensitive;

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

  /// Reference to `supported_character_sets` attribute.
  TfRef<List<String>> get supportedCharacterSets =>
      TfRef.attribute<List<String>>(this, 'supported_character_sets');

  /// Reference to `supported_timezones` attribute.
  TfRef<List<String>> get supportedTimezones =>
      TfRef.attribute<List<String>>(this, 'supported_timezones');

  /// Reference to `supports_global_databases` attribute.
  TfRef<bool> get supportsGlobalDatabases =>
      TfRef.attribute<bool>(this, 'supports_global_databases');

  /// Reference to `supports_log_exports_to_cloudwatch` attribute.
  TfRef<bool> get supportsLogExportsToCloudwatch =>
      TfRef.attribute<bool>(this, 'supports_log_exports_to_cloudwatch');

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
