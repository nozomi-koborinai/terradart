// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_redshift_snapshot_copy_grant`.
const Set<String> _awsRedshiftSnapshotCopyGrantSensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_copy_grant`.
final class AwsRedshiftSnapshotCopyGrant extends Resource {
  static const String tfType = 'aws_redshift_snapshot_copy_grant';

  AwsRedshiftSnapshotCopyGrant({
    required super.localName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<String> snapshotCopyGrantName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'snapshot_copy_grant_name': snapshotCopyGrantName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotCopyGrantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftSnapshotCopyGrant>`.
  RefTo<AwsRedshiftSnapshotCopyGrant> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `snapshot_copy_grant_name` attribute.
  TfRef<String> get snapshotCopyGrantNameRef =>
      TfRef.attribute<String>(this, 'snapshot_copy_grant_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
