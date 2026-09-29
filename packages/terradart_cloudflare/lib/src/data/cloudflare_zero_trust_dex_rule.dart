// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dex_rule.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dex_rule`.
const Set<String> _cloudflareZeroTrustDexRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dex_rule`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class DataCloudflareZeroTrustDexRule extends Data {
  static const String tfType = 'cloudflare_zero_trust_dex_rule';

  DataCloudflareZeroTrustDexRule({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> ruleId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId, 'rule_id': ruleId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexRuleSensitive;

  /// A reference to the `cloudflare_zero_trust_dex_rule` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDexRule>`.
  RefTo<CloudflareZeroTrustDexRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
