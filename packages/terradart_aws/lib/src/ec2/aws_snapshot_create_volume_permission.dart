// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_snapshot_create_volume_permission`.
const Set<String> _awsSnapshotCreateVolumePermissionSensitive = <String>{};

/// Factory wrapper for `aws_snapshot_create_volume_permission`.
final class AwsSnapshotCreateVolumePermission extends Resource {
  static const String tfType = 'aws_snapshot_create_volume_permission';

  AwsSnapshotCreateVolumePermission({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? region,
    required TfArg<String> snapshotId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (region != null) 'region': region,
           'snapshot_id': snapshotId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSnapshotCreateVolumePermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
