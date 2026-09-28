// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_connectivity_settings`.
const Set<String> _cloudflareZeroTrustConnectivitySettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_connectivity_settings`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Report` - `Zero Trust Write`
final class DataCloudflareZeroTrustConnectivitySettings extends Data {
  static const String tfType = 'cloudflare_zero_trust_connectivity_settings';

  DataCloudflareZeroTrustConnectivitySettings({
    required super.localName,
    required TfArg<String> accountId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'account_id': accountId});

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustConnectivitySettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `icmp_proxy_enabled` attribute.
  TfRef<bool> get icmpProxyEnabled =>
      TfRef.attribute<bool>(this, 'icmp_proxy_enabled');

  /// Reference to `offramp_warp_enabled` attribute.
  TfRef<bool> get offrampWarpEnabled =>
      TfRef.attribute<bool>(this, 'offramp_warp_enabled');
}
