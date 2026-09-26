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
           if (region != null) 'region': region,
           'size_in_gb': sizeInGb,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDiskSensitive;

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
}
