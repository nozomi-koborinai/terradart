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
final class CloudflareZeroTrustConnectivitySettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_connectivity_settings';

  CloudflareZeroTrustConnectivitySettings({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? icmpProxyEnabled,
    TfArg<bool>? offrampWarpEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (icmpProxyEnabled != null) 'icmp_proxy_enabled': icmpProxyEnabled,
           if (offrampWarpEnabled != null)
             'offramp_warp_enabled': offrampWarpEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustConnectivitySettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustConnectivitySettings>`.
  RefTo<CloudflareZeroTrustConnectivitySettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
