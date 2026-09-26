// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_backup`.
const Set<String> _awsFsxBackupSensitive = <String>{};

/// Factory wrapper for `aws_fsx_backup`.
final class AwsFsxBackup extends Resource {
  static const String tfType = 'aws_fsx_backup';

  AwsFsxBackup({
    required super.localName,
    TfArg<String>? fileSystemId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? volumeId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (fileSystemId != null) 'file_system_id': fileSystemId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (volumeId != null) 'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxBackupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
