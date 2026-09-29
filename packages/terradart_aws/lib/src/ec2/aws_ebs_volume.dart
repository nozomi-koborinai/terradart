// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
    RefTo<AwsKmsKey>? kmsKeyId,
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
           'encrypted': ?encrypted,
           'final_snapshot': ?finalSnapshot,
           'iops': ?iops,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'multi_attach_enabled': ?multiAttachEnabled,
           'outpost_arn': ?outpostArn,
           'region': ?region,
           'size': ?size,
           'snapshot_id': ?snapshotId,
           'tags': ?tags,
           'throughput': ?throughput,
           'type': ?type,
           'volume_initialization_rate': ?volumeInitializationRate,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsVolume>`.
  RefTo<AwsEbsVolume> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
