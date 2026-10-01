// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dex_rules`.
const Set<String> _cloudflareZeroTrustDexRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dex_rules`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class DataCloudflareZeroTrustDexRules extends Data {
  static const String tfType = 'cloudflare_zero_trust_dex_rules';

  DataCloudflareZeroTrustDexRules({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? sortBy,
    TfArg<String>? sortOrder,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
           'sort_by': ?sortBy,
           'sort_order': ?sortOrder,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexRulesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `sort_by` attribute.
  TfRef<String> get sortBy => TfRef.attribute<String>(this, 'sort_by');

  /// Reference to `sort_order` attribute.
  TfRef<String> get sortOrder => TfRef.attribute<String>(this, 'sort_order');
}
