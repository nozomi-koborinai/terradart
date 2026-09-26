// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_access_point`.
const Set<String> _awsS3AccessPointSensitive = <String>{};

/// Typed helper for the `public_access_block_configuration` block of
/// `aws_s3_access_point` (derived from provider schema).
@immutable
final class S3AccessPointPublicAccessBlockConfiguration {
  const S3AccessPointPublicAccessBlockConfiguration({
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

/// Typed helper for the `vpc_configuration` block of
/// `aws_s3_access_point` (derived from provider schema).
@immutable
final class S3AccessPointVpcConfiguration {
  const S3AccessPointVpcConfiguration({required this.vpcId});

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {'vpc_id': vpcId.toTfJson()};
}

/// Factory wrapper for `aws_s3_access_point`.
final class AwsS3AccessPoint extends Resource {
  static const String tfType = 'aws_s3_access_point';

  AwsS3AccessPoint({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> bucket,
    TfArg<String>? bucketAccountId,
    required TfArg<String> name,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    S3AccessPointPublicAccessBlockConfiguration? publicAccessBlockConfiguration,
    S3AccessPointVpcConfiguration? vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'bucket': bucket,
           if (bucketAccountId != null) 'bucket_account_id': bucketAccountId,
           'name': name,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (publicAccessBlockConfiguration != null)
             'public_access_block_configuration': TfArg.literal(
               publicAccessBlockConfiguration.encode(),
             ),
           if (vpcConfiguration != null)
             'vpc_configuration': TfArg.literal(vpcConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3AccessPointSensitive;

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

  /// Reference to `endpoints` attribute.
  TfRef<Map<String, String>> get endpoints =>
      TfRef.attribute<Map<String, String>>(this, 'endpoints');

  /// Reference to `has_public_access_policy` attribute.
  TfRef<bool> get hasPublicAccessPolicy =>
      TfRef.attribute<bool>(this, 'has_public_access_policy');

  /// Reference to `network_origin` attribute.
  TfRef<String> get networkOrigin =>
      TfRef.attribute<String>(this, 'network_origin');
}
