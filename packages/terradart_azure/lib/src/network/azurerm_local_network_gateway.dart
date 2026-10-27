// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_local_network_gateway`.
const Set<String> _azurermLocalNetworkGatewaySensitive = <String>{};

/// Exactly one of `gateway_address`, `gateway_fqdn` on `azurerm_local_network_gateway`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayAddress(...)`.
sealed class LocalNetworkGatewayAddressOrGatewayFqdn {
  const LocalNetworkGatewayAddressOrGatewayFqdn();

  /// Sets `gateway_address`.
  const factory LocalNetworkGatewayAddressOrGatewayFqdn.gatewayAddress(
    TfArg<String> gatewayAddress,
  ) = LocalNetworkGatewayAddressOrGatewayFqdnGatewayAddress;

  /// Sets `gateway_fqdn`.
  const factory LocalNetworkGatewayAddressOrGatewayFqdn.gatewayFqdn(
    TfArg<String> gatewayFqdn,
  ) = LocalNetworkGatewayAddressOrGatewayFqdnChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LocalNetworkGatewayAddressOrGatewayFqdn.gatewayAddress] choice: sets `gateway_address`.
final class LocalNetworkGatewayAddressOrGatewayFqdnGatewayAddress
    extends LocalNetworkGatewayAddressOrGatewayFqdn {
  const LocalNetworkGatewayAddressOrGatewayFqdnGatewayAddress(
    this.gatewayAddress,
  );

  final TfArg<String> gatewayAddress;

  @internal
  @override
  String get blockKey => 'gateway_address';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gateway_address': gatewayAddress.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'gateway_address': gatewayAddress};
}

/// The [LocalNetworkGatewayAddressOrGatewayFqdn.gatewayFqdn] choice: sets `gateway_fqdn`.
final class LocalNetworkGatewayAddressOrGatewayFqdnChoice
    extends LocalNetworkGatewayAddressOrGatewayFqdn {
  const LocalNetworkGatewayAddressOrGatewayFqdnChoice(this.gatewayFqdn);

  final TfArg<String> gatewayFqdn;

  @internal
  @override
  String get blockKey => 'gateway_fqdn';

  @internal
  @override
  Map<String, Object?> encode() => {'gateway_fqdn': gatewayFqdn.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'gateway_fqdn': gatewayFqdn};
}

/// Typed helper for the `bgp_settings` block of
/// `azurerm_local_network_gateway` (derived from provider schema).
@immutable
final class LocalNetworkGatewayBgpSettings {
  const LocalNetworkGatewayBgpSettings({
    required this.asn,
    required this.bgpPeeringAddress,
    this.peerWeight,
  });

  final TfArg<num> asn;

  final TfArg<String> bgpPeeringAddress;

  final TfArg<num>? peerWeight;

  @internal
  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'bgp_peering_address': bgpPeeringAddress.toTfJson(),
    'peer_weight': ?peerWeight?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_local_network_gateway`.
final class AzurermLocalNetworkGateway extends Resource {
  static const String tfType = 'azurerm_local_network_gateway';

  AzurermLocalNetworkGateway(
    super.localName, {
    TfArg<List<String>>? addressSpace,
    required LocalNetworkGatewayAddressOrGatewayFqdn
    gatewayAddressOrGatewayFqdn,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    LocalNetworkGatewayBgpSettings? bgpSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_space': ?addressSpace,
           ...gatewayAddressOrGatewayFqdn.argMap,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (bgpSettings != null)
             'bgp_settings': TfArg.literal(bgpSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLocalNetworkGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLocalNetworkGateway>`.
  RefTo<AzurermLocalNetworkGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_space` attribute.
  TfRef<List<String>> get addressSpace =>
      TfRef.attribute<List<String>>(this, 'address_space');

  /// Reference to `gateway_address` attribute.
  TfRef<String> get gatewayAddress =>
      TfRef.attribute<String>(this, 'gateway_address');

  /// Reference to `gateway_fqdn` attribute.
  TfRef<String> get gatewayFqdn =>
      TfRef.attribute<String>(this, 'gateway_fqdn');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
