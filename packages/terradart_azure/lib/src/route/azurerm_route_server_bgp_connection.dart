// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_route_server_bgp_connection`.
const Set<String> _azurermRouteServerBgpConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_route_server_bgp_connection`.
final class AzurermRouteServerBgpConnection extends Resource {
  static const String tfType = 'azurerm_route_server_bgp_connection';

  AzurermRouteServerBgpConnection(
    super.localName, {
    required TfArg<String> name,
    required TfArg<num> peerAsn,
    required TfArg<String> peerIp,
    required TfArg<String> routeServerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'peer_asn': peerAsn,
           'peer_ip': peerIp,
           'route_server_id': routeServerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRouteServerBgpConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRouteServerBgpConnection>`.
  RefTo<AzurermRouteServerBgpConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `peer_asn` attribute.
  TfRef<num> get peerAsn => TfRef.attribute<num>(this, 'peer_asn');

  /// Reference to `peer_ip` attribute.
  TfRef<String> get peerIp => TfRef.attribute<String>(this, 'peer_ip');

  /// Reference to `route_server_id` attribute.
  TfRef<String> get routeServerId =>
      TfRef.attribute<String>(this, 'route_server_id');
}
