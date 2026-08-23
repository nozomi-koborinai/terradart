// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_wan_ipsec_tunnel`.
const Set<String> _cloudflareMagicWanIpsecTunnelSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_wan_ipsec_tunnel`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicWanIpsecTunnel extends Data {
  static const String tfType = 'cloudflare_magic_wan_ipsec_tunnel';

  DataCloudflareMagicWanIpsecTunnel({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> ipsecTunnelId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'ipsec_tunnel_id': ipsecTunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanIpsecTunnelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
