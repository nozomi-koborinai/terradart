// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_volume_copy`.
const Set<String> _awsEbsVolumeCopySensitive = <String>{};

/// Factory wrapper for `aws_ebs_volume_copy`.
final class AwsEbsVolumeCopy extends Resource {
  static const String tfType = 'aws_ebs_volume_copy';

  AwsEbsVolumeCopy({
    required super.localName,
    TfArg<num>? iops,
    TfArg<String>? region,
    TfArg<num>? size,
    required TfArg<String> sourceVolumeId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughput,
    TfArg<String>? volumeType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (iops != null) 'iops': iops,
           if (region != null) 'region': region,
           if (size != null) 'size': size,
           'source_volume_id': sourceVolumeId,
           if (tags != null) 'tags': tags,
           if (throughput != null) 'throughput': throughput,
           if (volumeType != null) 'volume_type': volumeType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsVolumeCopySensitive;

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
}
