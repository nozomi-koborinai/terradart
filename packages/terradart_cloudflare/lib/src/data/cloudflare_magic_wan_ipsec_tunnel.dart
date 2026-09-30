// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_wan_ipsec_tunnel.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> ipsecTunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'ipsec_tunnel_id': ipsecTunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanIpsecTunnelSensitive;

  /// A reference to the `cloudflare_magic_wan_ipsec_tunnel` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicWanIpsecTunnel>`.
  RefTo<CloudflareMagicWanIpsecTunnel> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ipsec_tunnel_id` attribute.
  TfRef<String> get ipsecTunnelIdRef =>
      TfRef.attribute<String>(this, 'ipsec_tunnel_id');
}
