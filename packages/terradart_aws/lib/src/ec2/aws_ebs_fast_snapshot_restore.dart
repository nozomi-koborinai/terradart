// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_fast_snapshot_restore`.
const Set<String> _awsEbsFastSnapshotRestoreSensitive = <String>{};

/// Factory wrapper for `aws_ebs_fast_snapshot_restore`.
final class AwsEbsFastSnapshotRestore extends Resource {
  static const String tfType = 'aws_ebs_fast_snapshot_restore';

  AwsEbsFastSnapshotRestore({
    required super.localName,
    required TfArg<String> availabilityZone,
    TfArg<String>? region,
    required TfArg<String> snapshotId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           if (region != null) 'region': region,
           'snapshot_id': snapshotId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsFastSnapshotRestoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
