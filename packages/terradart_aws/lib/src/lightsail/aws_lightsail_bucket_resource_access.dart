// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_bucket_resource_access`.
const Set<String> _awsLightsailBucketResourceAccessSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_bucket_resource_access`.
final class AwsLightsailBucketResourceAccess extends Resource {
  static const String tfType = 'aws_lightsail_bucket_resource_access';

  AwsLightsailBucketResourceAccess(
    super.localName, {
    required TfArg<String> bucketName,
    TfArg<String>? region,
    required TfArg<String> resourceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_name': bucketName,
           'region': ?region,
           'resource_name': resourceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailBucketResourceAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailBucketResourceAccess>`.
  RefTo<AwsLightsailBucketResourceAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_name` attribute.
  TfRef<String> get resourceName =>
      TfRef.attribute<String>(this, 'resource_name');
}
