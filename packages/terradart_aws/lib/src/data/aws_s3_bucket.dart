// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket`.
const Set<String> _awsS3BucketSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket`.
final class DataAwsS3Bucket extends Data {
  static const String tfType = 'aws_s3_bucket';

  DataAwsS3Bucket({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `bucket_domain_name` attribute.
  TfRef<String> get bucketDomainName =>
      TfRef.attribute<String>(this, 'bucket_domain_name');

  /// Reference to `bucket_region` attribute.
  TfRef<String> get bucketRegion =>
      TfRef.attribute<String>(this, 'bucket_region');

  /// Reference to `bucket_regional_domain_name` attribute.
  TfRef<String> get bucketRegionalDomainName =>
      TfRef.attribute<String>(this, 'bucket_regional_domain_name');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `website_domain` attribute.
  TfRef<String> get websiteDomain =>
      TfRef.attribute<String>(this, 'website_domain');

  /// Reference to `website_endpoint` attribute.
  TfRef<String> get websiteEndpoint =>
      TfRef.attribute<String>(this, 'website_endpoint');
}
