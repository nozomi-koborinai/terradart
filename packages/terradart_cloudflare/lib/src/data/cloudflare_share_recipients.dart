// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_recipients`.
const Set<String> _cloudflareShareRecipientsSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipients`.
final class DataCloudflareShareRecipients extends Data {
  static const String tfType = 'cloudflare_share_recipients';

  DataCloudflareShareRecipients({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeResources,
    TfArg<num>? maxItems,
    required TfArg<String> shareId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_resources': ?includeResources,
           'max_items': ?maxItems,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResourcesRef =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareIdRef => TfRef.attribute<String>(this, 'share_id');
}
