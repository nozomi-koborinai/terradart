// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_stored_iscsi_volume`.
const Set<String> _awsStoragegatewayStoredIscsiVolumeSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_stored_iscsi_volume`.
final class AwsStoragegatewayStoredIscsiVolume extends Resource {
  static const String tfType = 'aws_storagegateway_stored_iscsi_volume';

  AwsStoragegatewayStoredIscsiVolume({
    required super.localName,
    required TfArg<String> diskId,
    required TfArg<String> gatewayArn,
    TfArg<bool>? kmsEncrypted,
    TfArg<String>? kmsKey,
    required TfArg<String> networkInterfaceId,
    required TfArg<bool> preserveExistingData,
    TfArg<String>? region,
    TfArg<String>? snapshotId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk_id': diskId,
           'gateway_arn': gatewayArn,
           if (kmsEncrypted != null) 'kms_encrypted': kmsEncrypted,
           if (kmsKey != null) 'kms_key': kmsKey,
           'network_interface_id': networkInterfaceId,
           'preserve_existing_data': preserveExistingData,
           if (region != null) 'region': region,
           if (snapshotId != null) 'snapshot_id': snapshotId,
           if (tags != null) 'tags': tags,
           'target_name': targetName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsStoragegatewayStoredIscsiVolumeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `chap_enabled` attribute.
  TfRef<bool> get chapEnabled => TfRef.attribute<bool>(this, 'chap_enabled');

  /// Reference to `lun_number` attribute.
  TfRef<num> get lunNumber => TfRef.attribute<num>(this, 'lun_number');

  /// Reference to `network_interface_port` attribute.
  TfRef<num> get networkInterfacePort =>
      TfRef.attribute<num>(this, 'network_interface_port');

  /// Reference to `target_arn` attribute.
  TfRef<String> get targetArn => TfRef.attribute<String>(this, 'target_arn');

  /// Reference to `volume_attachment_status` attribute.
  TfRef<String> get volumeAttachmentStatus =>
      TfRef.attribute<String>(this, 'volume_attachment_status');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `volume_size_in_bytes` attribute.
  TfRef<num> get volumeSizeInBytes =>
      TfRef.attribute<num>(this, 'volume_size_in_bytes');

  /// Reference to `volume_status` attribute.
  TfRef<String> get volumeStatus =>
      TfRef.attribute<String>(this, 'volume_status');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeType => TfRef.attribute<String>(this, 'volume_type');
}
