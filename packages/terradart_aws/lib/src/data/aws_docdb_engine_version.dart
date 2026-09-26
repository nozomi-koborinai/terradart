// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_engine_version`.
const Set<String> _awsDocdbEngineVersionSensitive = <String>{};

/// Factory wrapper for `aws_docdb_engine_version`.
final class DataAwsDocdbEngineVersion extends Data {
  static const String tfType = 'aws_docdb_engine_version';

  DataAwsDocdbEngineVersion({
    required super.localName,
    TfArg<String>? engine,
    TfArg<String>? parameterGroupFamily,
    TfArg<List<String>>? preferredVersions,
    TfArg<String>? region,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engine != null) 'engine': engine,
           if (parameterGroupFamily != null)
             'parameter_group_family': parameterGroupFamily,
           if (preferredVersions != null)
             'preferred_versions': preferredVersions,
           if (region != null) 'region': region,
           if (version != null) 'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbEngineVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `engine_description` attribute.
  TfRef<String> get engineDescription =>
      TfRef.attribute<String>(this, 'engine_description');

  /// Reference to `exportable_log_types` attribute.
  TfRef<List<String>> get exportableLogTypes =>
      TfRef.attribute<List<String>>(this, 'exportable_log_types');

  /// Reference to `supports_log_exports_to_cloudwatch` attribute.
  TfRef<bool> get supportsLogExportsToCloudwatch =>
      TfRef.attribute<bool>(this, 'supports_log_exports_to_cloudwatch');

  /// Reference to `valid_upgrade_targets` attribute.
  TfRef<List<String>> get validUpgradeTargets =>
      TfRef.attribute<List<String>>(this, 'valid_upgrade_targets');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');
}
