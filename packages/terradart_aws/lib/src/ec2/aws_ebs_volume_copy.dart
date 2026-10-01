// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_volume_copy`.
const Set<String> _awsEbsVolumeCopySensitive = <String>{};

/// Ebs Volume Copy Volume enum for `volume_type`.
extension type const EbsVolumeCopyVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  EbsVolumeCopyVolumeType.variable(String name) : this._(TfArg.variable(name));
  EbsVolumeCopyVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const EbsVolumeCopyVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = EbsVolumeCopyVolumeType._(TfArgLiteral('standard'));
  static const io1 = EbsVolumeCopyVolumeType._(TfArgLiteral('io1'));
  static const io2 = EbsVolumeCopyVolumeType._(TfArgLiteral('io2'));
  static const gp2 = EbsVolumeCopyVolumeType._(TfArgLiteral('gp2'));
  static const sc1 = EbsVolumeCopyVolumeType._(TfArgLiteral('sc1'));
  static const st1 = EbsVolumeCopyVolumeType._(TfArgLiteral('st1'));
  static const gp3 = EbsVolumeCopyVolumeType._(TfArgLiteral('gp3'));

  static const List<EbsVolumeCopyVolumeType> values = [
    standard,
    io1,
    io2,
    gp2,
    sc1,
    st1,
    gp3,
  ];
}

/// Factory wrapper for `aws_ebs_volume_copy`.
final class AwsEbsVolumeCopy extends Resource {
  static const String tfType = 'aws_ebs_volume_copy';

  AwsEbsVolumeCopy(
    super.localName, {
    TfArg<num>? iops,
    TfArg<String>? region,
    TfArg<num>? size,
    required TfArg<String> sourceVolumeId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughput,
    EbsVolumeCopyVolumeType? volumeType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iops': ?iops,
           'region': ?region,
           'size': ?size,
           'source_volume_id': sourceVolumeId,
           'tags': ?tags,
           'throughput': ?throughput,
           'volume_type': ?volumeType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsVolumeCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsVolumeCopy>`.
  RefTo<AwsEbsVolumeCopy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `source_volume_id` attribute.
  TfRef<String> get sourceVolumeId =>
      TfRef.attribute<String>(this, 'source_volume_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeType => TfRef.attribute<String>(this, 'volume_type');
}
