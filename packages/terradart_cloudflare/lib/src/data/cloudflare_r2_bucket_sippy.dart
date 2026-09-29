// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket_sippy.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_sippy`.
const Set<String> _cloudflareR2BucketSippySensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket_sippy`.
final class DataCloudflareR2BucketSippy extends Data {
  static const String tfType = 'cloudflare_r2_bucket_sippy';

  DataCloudflareR2BucketSippy({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'bucket_name': bucketName},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSippySensitive;

  /// A reference to the `cloudflare_r2_bucket_sippy` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2BucketSippy>`.
  RefTo<CloudflareR2BucketSippy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
