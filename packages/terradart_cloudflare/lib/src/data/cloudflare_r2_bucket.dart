// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../r2/cloudflare_r2_bucket.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket`.
const Set<String> _cloudflareR2BucketSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket`.
final class DataCloudflareR2Bucket extends Data {
  static const String tfType = 'cloudflare_r2_bucket';

  DataCloudflareR2Bucket({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> bucketName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'bucket_name': bucketName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSensitive;

  /// A reference to the `cloudflare_r2_bucket` this data source reads, for
  /// arguments typed `RefTo<CloudflareR2Bucket>`.
  RefTo<CloudflareR2Bucket> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');
}
