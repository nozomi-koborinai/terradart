// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_lifecycle`.
const Set<String> _cloudflareR2BucketLifecycleSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_lifecycle`.
final class DataCloudflareR2BucketLifecycle extends Data {
  static const String tfType = 'cloudflare_r2_bucket_lifecycle';

  DataCloudflareR2BucketLifecycle({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'bucket_name': bucketName},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketLifecycleSensitive;
}
