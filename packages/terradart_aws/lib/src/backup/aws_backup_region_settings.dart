// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_region_settings`.
const Set<String> _awsBackupRegionSettingsSensitive = <String>{};

/// Factory wrapper for `aws_backup_region_settings`.
final class AwsBackupRegionSettings extends Resource {
  static const String tfType = 'aws_backup_region_settings';

  AwsBackupRegionSettings({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, bool>>? resourceTypeManagementPreference,
    required TfArg<Map<String, bool>> resourceTypeOptInPreference,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (resourceTypeManagementPreference != null)
             'resource_type_management_preference':
                 resourceTypeManagementPreference,
           'resource_type_opt_in_preference': resourceTypeOptInPreference,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupRegionSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
