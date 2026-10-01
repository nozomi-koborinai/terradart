// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket_lock.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lock`.
const Set<String> _cloudflareR2BucketLockSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_lock`.
final class DataCloudflareR2BucketLock extends Data {
  static const String tfType = 'cloudflare_r2_bucket_lock';

  DataCloudflareR2BucketLock({
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
  Set<String> get sensitiveFields => _cloudflareR2BucketLockSensitive;

  /// A reference to the `cloudflare_r2_bucket_lock` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2BucketLock>`.
  RefTo<CloudflareR2BucketLock> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');
}
