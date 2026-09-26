// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_multi_region_access_point`.
const Set<String> _awsS3controlMultiRegionAccessPointSensitive = <String>{};

/// Typed helper for the `details` block of
/// `aws_s3control_multi_region_access_point` (derived from provider schema).
@immutable
final class S3controlMultiRegionAccessPointDetails {
  const S3controlMultiRegionAccessPointDetails({
    required this.name,
    this.publicAccessBlock,
    required this.region,
  });

  final TfArg<String> name;

  final S3controlMultiRegionAccessPointDetailsPublicAccessBlock?
  publicAccessBlock;

  final List<S3controlMultiRegionAccessPointDetailsRegion> region;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (publicAccessBlock != null)
      'public_access_block': publicAccessBlock!.encode(),
    'region': [for (final e in region) e.encode()],
  };
}

/// Typed helper for the `details.public_access_block` block of
/// `aws_s3control_multi_region_access_point` (derived from provider schema).
@immutable
final class S3controlMultiRegionAccessPointDetailsPublicAccessBlock {
  const S3controlMultiRegionAccessPointDetailsPublicAccessBlock({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  final TfArg<bool>? blockPublicAcls;

  final TfArg<bool>? blockPublicPolicy;

  final TfArg<bool>? ignorePublicAcls;

  final TfArg<bool>? restrictPublicBuckets;

  Map<String, Object?> encode() => {
    if (blockPublicAcls != null)
      'block_public_acls': blockPublicAcls!.toTfJson(),
    if (blockPublicPolicy != null)
      'block_public_policy': blockPublicPolicy!.toTfJson(),
    if (ignorePublicAcls != null)
      'ignore_public_acls': ignorePublicAcls!.toTfJson(),
    if (restrictPublicBuckets != null)
      'restrict_public_buckets': restrictPublicBuckets!.toTfJson(),
  };
}

/// Typed helper for the `details.region` block of
/// `aws_s3control_multi_region_access_point` (derived from provider schema).
@immutable
final class S3controlMultiRegionAccessPointDetailsRegion {
  const S3controlMultiRegionAccessPointDetailsRegion({
    required this.bucket,
    this.bucketAccountId,
  });

  final TfArg<String> bucket;

  final TfArg<String>? bucketAccountId;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (bucketAccountId != null)
      'bucket_account_id': bucketAccountId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_multi_region_access_point`.
final class AwsS3controlMultiRegionAccessPoint extends Resource {
  static const String tfType = 'aws_s3control_multi_region_access_point';

  AwsS3controlMultiRegionAccessPoint({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? region,
    required S3controlMultiRegionAccessPointDetails details,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (region != null) 'region': region,
           'details': TfArg.literal(details.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlMultiRegionAccessPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
