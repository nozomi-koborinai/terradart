// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_identity`.
const Set<String> _awsCloudfrontOriginAccessIdentitySensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_origin_access_identity`.
final class AwsCloudfrontOriginAccessIdentity extends Resource {
  static const String tfType = 'aws_cloudfront_origin_access_identity';

  AwsCloudfrontOriginAccessIdentity({
    required super.localName,
    TfArg<String>? comment,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (comment != null) 'comment': comment},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontOriginAccessIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `cloudfront_access_identity_path` attribute.
  TfRef<String> get cloudfrontAccessIdentityPath =>
      TfRef.attribute<String>(this, 'cloudfront_access_identity_path');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `iam_arn` attribute.
  TfRef<String> get iamArn => TfRef.attribute<String>(this, 'iam_arn');

  /// Reference to `s3_canonical_user_id` attribute.
  TfRef<String> get s3CanonicalUserId =>
      TfRef.attribute<String>(this, 's3_canonical_user_id');
}
