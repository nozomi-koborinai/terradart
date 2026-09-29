// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_wan_gre_tunnel.dart';

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
    TfArg<String>? accountId,
    required TfArg<String> greTunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'gre_tunnel_id': greTunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanGreTunnelSensitive;

  /// A reference to the `cloudflare_magic_wan_gre_tunnel` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicWanGreTunnel>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareMagicWanGreTunnel> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
