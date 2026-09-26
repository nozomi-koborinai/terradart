// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_log_delivery_canonical_user_id`.
const Set<String> _awsCloudfrontLogDeliveryCanonicalUserIdSensitive =
    <String>{};

/// Factory wrapper for `aws_cloudfront_log_delivery_canonical_user_id`.
final class DataAwsCloudfrontLogDeliveryCanonicalUserId extends Data {
  static const String tfType = 'aws_cloudfront_log_delivery_canonical_user_id';

  DataAwsCloudfrontLogDeliveryCanonicalUserId({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontLogDeliveryCanonicalUserIdSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
