// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket_lifecycle.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lifecycle`.
const Set<String> _cloudflareR2BucketLifecycleSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_lifecycle`.
final class DataCloudflareR2BucketLifecycle extends Data {
  static const String tfType = 'cloudflare_r2_bucket_lifecycle';

  DataCloudflareR2BucketLifecycle({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketLifecycleSensitive;

  /// A reference to the `cloudflare_r2_bucket_lifecycle` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2BucketLifecycle>`.
  RefTo<CloudflareR2BucketLifecycle> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketNameRef =>
      TfRef.attribute<String>(this, 'bucket_name');
}
