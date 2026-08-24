// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_url_normalization_settings`.
const Set<String> _cloudflareUrlNormalizationSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_url_normalization_settings`.
///
/// Accepted Permissions
///
/// - `Account Rulesets Read` - `Account Rulesets Write` - `Account WAF Read` -
/// `Account WAF Write` - `Bot Management Read` - `Bot Management Write` -
/// `Cache Settings Read` - `Cache Settings Write` - `Config Settings Read` -
/// `Config Settings Write` - `Custom Errors Read` - `Custom Errors Write` -
/// `Dynamic URL Redirects Read` - `Dynamic URL Redirects Write` - `HTTP DDoS
/// Managed Ruleset Read` - `HTTP DDoS Managed Ruleset Write` - `L4 DDoS Managed
/// Ruleset Read` - `L4 DDoS Managed Ruleset Write` - `Logs Read` - `Logs Write`
/// - `Magic Firewall Read` - `Magic Firewall Write` - `Managed headers Read` -
/// `Managed headers Write` - `Mass URL Redirects Read` - `Mass URL Redirects
/// Write` - `Origin Read` - `Origin Write` - `Response Compression Read` -
/// `Response Compression Write` - `Sanitize Read` - `Sanitize Write` - `Select
/// Configuration Read` - `Select Configuration Write` - `Transform Rules Read`
/// - `Transform Rules Write` - `Zone Transform Rules Read` - `Zone Transform
/// Rules Write` - `Zone WAF Read` - `Zone WAF Write`
final class CloudflareUrlNormalizationSettings extends Resource {
  static const String tfType = 'cloudflare_url_normalization_settings';

  CloudflareUrlNormalizationSettings({
    required super.localName,
    required TfArg<String> scope,
    required TfArg<String> type,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'scope': scope, 'type': type, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareUrlNormalizationSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
