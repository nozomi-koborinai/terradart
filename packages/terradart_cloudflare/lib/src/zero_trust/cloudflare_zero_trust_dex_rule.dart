// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dex_rule`.
const Set<String> _cloudflareZeroTrustDexRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dex_rule`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class CloudflareZeroTrustDexRule extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dex_rule';

  CloudflareZeroTrustDexRule({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> match,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'match': match,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
