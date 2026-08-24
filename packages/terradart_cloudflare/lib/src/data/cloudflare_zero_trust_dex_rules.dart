// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? sortBy,
    TfArg<String>? sortOrder,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (sortBy != null) 'sort_by': sortBy,
           if (sortOrder != null) 'sort_order': sortOrder,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexRulesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
