// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket_sippy.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_sippy`.
const Set<String> _cloudflareR2BucketSippySensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_sippy`.
final class DataCloudflareR2BucketSippy extends Data {
  static const String tfType = 'cloudflare_r2_bucket_sippy';

  DataCloudflareR2BucketSippy({
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
  Set<String> get sensitiveFields => _cloudflareR2BucketSippySensitive;

  /// A reference to the `cloudflare_r2_bucket_sippy` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2BucketSippy>`.
  RefTo<CloudflareR2BucketSippy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketNameRef =>
      TfRef.attribute<String>(this, 'bucket_name');
}
