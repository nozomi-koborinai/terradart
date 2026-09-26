// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_volume`.
const Set<String> _awsEbsVolumeSensitive = <String>{};

/// Factory wrapper for `aws_ebs_volume`.
final class AwsEbsVolume extends Resource {
  static const String tfType = 'aws_ebs_volume';

  AwsEbsVolume({
    required super.localName,
    required TfArg<String> availabilityZone,
    TfArg<bool>? encrypted,
    TfArg<bool>? finalSnapshot,
    TfArg<num>? iops,
    TfArg<String>? kmsKeyId,
    TfArg<bool>? multiAttachEnabled,
    TfArg<String>? outpostArn,
    TfArg<String>? region,
    TfArg<num>? size,
    TfArg<String>? snapshotId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughput,
    TfArg<String>? type,
    TfArg<num>? volumeInitializationRate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           if (encrypted != null) 'encrypted': encrypted,
           if (finalSnapshot != null) 'final_snapshot': finalSnapshot,
           if (iops != null) 'iops': iops,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (multiAttachEnabled != null)
             'multi_attach_enabled': multiAttachEnabled,
           if (outpostArn != null) 'outpost_arn': outpostArn,
           if (region != null) 'region': region,
           if (size != null) 'size': size,
           if (snapshotId != null) 'snapshot_id': snapshotId,
           if (tags != null) 'tags': tags,
           if (throughput != null) 'throughput': throughput,
           if (type != null) 'type': type,
           if (volumeInitializationRate != null)
             'volume_initialization_rate': volumeInitializationRate,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsVolumeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
