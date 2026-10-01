// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_storagegateway_cached_iscsi_volume`.
const Set<String> _awsStoragegatewayCachedIscsiVolumeSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_cached_iscsi_volume`.
final class AwsStoragegatewayCachedIscsiVolume extends Resource {
  static const String tfType = 'aws_storagegateway_cached_iscsi_volume';

  AwsStoragegatewayCachedIscsiVolume(
    super.localName, {
    required TfArg<String> gatewayArn,
    TfArg<bool>? kmsEncrypted,
    RefTo<AwsKmsKey>? kmsKey,
    required TfArg<String> networkInterfaceId,
    TfArg<String>? region,
    TfArg<String>? snapshotId,
    TfArg<String>? sourceVolumeArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetName,
    required TfArg<num> volumeSizeInBytes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gateway_arn': gatewayArn,
           'kms_encrypted': ?kmsEncrypted,
           'kms_key': ?kmsKey?.encodeAs('arn'),
           'network_interface_id': networkInterfaceId,
           'region': ?region,
           'snapshot_id': ?snapshotId,
           'source_volume_arn': ?sourceVolumeArn,
           'tags': ?tags,
           'target_name': targetName,
           'volume_size_in_bytes': volumeSizeInBytes,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsStoragegatewayCachedIscsiVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewayCachedIscsiVolume>`.
  RefTo<AwsStoragegatewayCachedIscsiVolume> get ref => RefTo.of(this);

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

  /// Reference to `volume_arn` attribute.
  TfRef<String> get volumeArn => TfRef.attribute<String>(this, 'volume_arn');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `kms_encrypted` attribute.
  TfRef<bool> get kmsEncrypted => TfRef.attribute<bool>(this, 'kms_encrypted');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `source_volume_arn` attribute.
  TfRef<String> get sourceVolumeArn =>
      TfRef.attribute<String>(this, 'source_volume_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_name` attribute.
  TfRef<String> get targetName => TfRef.attribute<String>(this, 'target_name');

  /// Reference to `volume_size_in_bytes` attribute.
  TfRef<num> get volumeSizeInBytes =>
      TfRef.attribute<num>(this, 'volume_size_in_bytes');
}
