// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_wan_gre_tunnel.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_wan_gre_tunnel`.
const Set<String> _cloudflareMagicWanGreTunnelSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_wan_gre_tunnel`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicWanGreTunnel extends Data {
  static const String tfType = 'cloudflare_magic_wan_gre_tunnel';

  DataCloudflareMagicWanGreTunnel({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> greTunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'gre_tunnel_id': greTunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanGreTunnelSensitive;

  /// A reference to the `cloudflare_magic_wan_gre_tunnel` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicWanGreTunnel>`.
  RefTo<CloudflareMagicWanGreTunnel> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `gre_tunnel_id` attribute.
  TfRef<String> get greTunnelId =>
      TfRef.attribute<String>(this, 'gre_tunnel_id');
}
