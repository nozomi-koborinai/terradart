// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_copy_grant`.
const Set<String> _awsRedshiftSnapshotCopyGrantSensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_copy_grant`.
final class AwsRedshiftSnapshotCopyGrant extends Resource {
  static const String tfType = 'aws_redshift_snapshot_copy_grant';

  AwsRedshiftSnapshotCopyGrant({
    required super.localName,
    TfArg<String>? kmsKeyId,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           'snapshot_copy_grant_name': snapshotCopyGrantName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotCopyGrantSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
