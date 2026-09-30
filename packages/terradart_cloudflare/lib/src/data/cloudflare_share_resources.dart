// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_resources`.
const Set<String> _cloudflareShareResourcesSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_resources`.
final class DataCloudflareShareResources extends Data {
  static const String tfType = 'cloudflare_share_resources';

  DataCloudflareShareResources({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    TfArg<String>? resourceType,
    required TfArg<String> shareId,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
           'resource_type': ?resourceType,
           'share_id': shareId,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourcesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareIdRef => TfRef.attribute<String>(this, 'share_id');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');
}
