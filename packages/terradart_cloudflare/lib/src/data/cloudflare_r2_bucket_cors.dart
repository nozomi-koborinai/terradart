// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_cors`.
const Set<String> _cloudflareR2BucketCorsSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_cors`.
final class DataCloudflareR2BucketCors extends Data {
  static const String tfType = 'cloudflare_r2_bucket_cors';

  DataCloudflareR2BucketCors({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'bucket_name': bucketName},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketCorsSensitive;
}
