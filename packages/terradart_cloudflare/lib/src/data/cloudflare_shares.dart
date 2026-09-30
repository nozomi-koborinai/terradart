// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_shares`.
const Set<String> _cloudflareSharesSensitive = <String>{};

/// Factory wrapper for `cloudflare_shares`.
final class DataCloudflareShares extends Data {
  static const String tfType = 'cloudflare_shares';

  DataCloudflareShares({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    TfArg<String>? kind,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<List<String>>? resourceTypes,
    TfArg<String>? status,
    TfArg<List<String>>? tag,
    TfArg<String>? targetType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'include_recipient_counts': ?includeRecipientCounts,
           'include_resources': ?includeResources,
           'kind': ?kind,
           'max_items': ?maxItems,
           'order': ?order,
           'resource_types': ?resourceTypes,
           'status': ?status,
           'tag': ?tag,
           'target_type': ?targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSharesSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get directionRef => TfRef.attribute<String>(this, 'direction');

  /// Reference to `include_recipient_counts` attribute.
  TfRef<bool> get includeRecipientCountsRef =>
      TfRef.attribute<bool>(this, 'include_recipient_counts');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResourcesRef =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get orderRef => TfRef.attribute<String>(this, 'order');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypesRef =>
      TfRef.attribute<List<String>>(this, 'resource_types');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `tag` attribute.
  TfRef<List<String>> get tagRef => TfRef.attribute<List<String>>(this, 'tag');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetTypeRef =>
      TfRef.attribute<String>(this, 'target_type');
}
