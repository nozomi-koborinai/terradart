// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_global_settings`.
const Set<String> _awsBackupGlobalSettingsSensitive = <String>{};

/// Factory wrapper for `aws_backup_global_settings`.
final class AwsBackupGlobalSettings extends Resource {
  static const String tfType = 'aws_backup_global_settings';

  AwsBackupGlobalSettings({
    required super.localName,
    required TfArg<Map<String, String>> globalSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'global_settings': globalSettings},
       );

  @override
  Set<String> get sensitiveFields => _awsBackupGlobalSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
