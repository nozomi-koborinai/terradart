// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_identities`.
const Set<String> _awsCloudfrontOriginAccessIdentitiesSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_origin_access_identities`.
final class DataAwsCloudfrontOriginAccessIdentities extends Data {
  static const String tfType = 'aws_cloudfront_origin_access_identities';

  DataAwsCloudfrontOriginAccessIdentities({
    required super.localName,
    TfArg<List<String>>? comments,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (comments != null) 'comments': comments},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontOriginAccessIdentitiesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iam_arns` attribute.
  TfRef<List<String>> get iamArns =>
      TfRef.attribute<List<String>>(this, 'iam_arns');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');

  /// Reference to `s3_canonical_user_ids` attribute.
  TfRef<List<String>> get s3CanonicalUserIds =>
      TfRef.attribute<List<String>>(this, 's3_canonical_user_ids');
}
