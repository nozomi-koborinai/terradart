// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_disk`.
const Set<String> _awsLightsailDiskSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_disk`.
final class AwsLightsailDisk extends Resource {
  static const String tfType = 'aws_lightsail_disk';

  AwsLightsailDisk({
    required super.localName,
    required TfArg<String> availabilityZone,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<num> sizeInGb,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': availabilityZone,
           'name': name,
           'region': ?region,
           'size_in_gb': sizeInGb,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailDisk>`.
  RefTo<AwsLightsailDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZoneRef =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `size_in_gb` attribute.
  TfRef<num> get sizeInGbRef => TfRef.attribute<num>(this, 'size_in_gb');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
