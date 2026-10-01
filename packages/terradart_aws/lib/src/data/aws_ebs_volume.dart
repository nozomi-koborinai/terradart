// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_ebs_volume.dart';

/// Sensitive field paths for `aws_ebs_volume`.
const Set<String> _awsEbsVolumeSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ebs_volume` (derived from provider schema).
@immutable
final class DataEbsVolumeFilter {
  const DataEbsVolumeFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ebs_volume`.
final class DataAwsEbsVolume extends Data {
  static const String tfType = 'aws_ebs_volume';

  DataAwsEbsVolume(
    super.localName, {
    TfArg<bool>? mostRecent,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEbsVolumeFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'most_recent': ?mostRecent,
           'region': ?region,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsVolumeSensitive;

  /// A reference to the `aws_ebs_volume` this data source reads, for
  /// arguments typed `RefTo<AwsEbsVolume>`.
  RefTo<AwsEbsVolume> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `multi_attach_enabled` attribute.
  TfRef<bool> get multiAttachEnabled =>
      TfRef.attribute<bool>(this, 'multi_attach_enabled');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `snapshot_id` attribute.
  TfRef<String> get snapshotId => TfRef.attribute<String>(this, 'snapshot_id');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `volume_initialization_rate` attribute.
  TfRef<num> get volumeInitializationRate =>
      TfRef.attribute<num>(this, 'volume_initialization_rate');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeType => TfRef.attribute<String>(this, 'volume_type');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecent => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
