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

  AwsEbsVolume(
    super.localName, {
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

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `final_snapshot` attribute.
  TfRef<bool> get finalSnapshot =>
      TfRef.attribute<bool>(this, 'final_snapshot');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `multi_attach_enabled` attribute.
  TfRef<bool> get multiAttachEnabled =>
      TfRef.attribute<bool>(this, 'multi_attach_enabled');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `volume_initialization_rate` attribute.
  TfRef<num> get volumeInitializationRate =>
      TfRef.attribute<num>(this, 'volume_initialization_rate');
}
