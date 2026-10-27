// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_private_endpoint`.
const Set<String> _azurermPrivateEndpointSensitive = <String>{};

/// Typed helper for the `ip_configuration` block of
/// `azurerm_private_endpoint` (derived from provider schema).
@immutable
final class PrivateEndpointIpConfiguration {
  const PrivateEndpointIpConfiguration({
    this.memberName,
    required this.name,
    required this.privateIpAddress,
    this.subresourceName,
  });

  final TfArg<String>? memberName;

  final TfArg<String> name;

  final TfArg<String> privateIpAddress;

  final TfArg<String>? subresourceName;

  @internal
  Map<String, Object?> encode() => {
    'member_name': ?memberName?.toTfJson(),
    'name': name.toTfJson(),
    'private_ip_address': privateIpAddress.toTfJson(),
    'subresource_name': ?subresourceName?.toTfJson(),
  };
}

/// Typed helper for the `private_dns_zone_group` block of
/// `azurerm_private_endpoint` (derived from provider schema).
@immutable
final class PrivateEndpointPrivateDnsZoneGroup {
  const PrivateEndpointPrivateDnsZoneGroup({
    required this.name,
    required this.privateDnsZoneIds,
  });

  final TfArg<String> name;

  final TfArg<List<String>> privateDnsZoneIds;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'private_dns_zone_ids': privateDnsZoneIds.toTfJson(),
  };
}

/// Typed helper for the `private_service_connection` block of
/// `azurerm_private_endpoint` (derived from provider schema).
@immutable
final class PrivateEndpointPrivateServiceConnection {
  const PrivateEndpointPrivateServiceConnection({
    required this.isManualConnection,
    required this.name,
    required this.privateConnectionResource,
    this.requestMessage,
    this.subresourceNames,
  });

  final TfArg<bool> isManualConnection;

  final TfArg<String> name;

  final PrivateEndpointPrivateConnectionResource privateConnectionResource;

  final TfArg<String>? requestMessage;

  final TfArg<List<String>>? subresourceNames;

  @internal
  Map<String, Object?> encode() => {
    'is_manual_connection': isManualConnection.toTfJson(),
    'name': name.toTfJson(),
    ...privateConnectionResource.encode(),
    'request_message': ?requestMessage?.toTfJson(),
    'subresource_names': ?subresourceNames?.toTfJson(),
  };
}

/// Exactly one of `private_connection_resource_alias`, `private_connection_resource_id` on the `private_service_connection` block of `azurerm_private_endpoint`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.privateConnectionResourceAlias(...)`.
sealed class PrivateEndpointPrivateConnectionResource {
  const PrivateEndpointPrivateConnectionResource();

  /// Sets `private_connection_resource_alias`.
  const factory PrivateEndpointPrivateConnectionResource.privateConnectionResourceAlias(
    TfArg<String> privateConnectionResourceAlias,
  ) = PrivateEndpointPrivateConnectionResourceAlias;

  /// Sets `private_connection_resource_id`.
  const factory PrivateEndpointPrivateConnectionResource.privateConnectionResourceId(
    TfArg<String> privateConnectionResourceId,
  ) = PrivateEndpointPrivateConnectionResourceId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PrivateEndpointPrivateConnectionResource.privateConnectionResourceAlias] choice: sets `private_connection_resource_alias`.
final class PrivateEndpointPrivateConnectionResourceAlias
    extends PrivateEndpointPrivateConnectionResource {
  const PrivateEndpointPrivateConnectionResourceAlias(
    this.privateConnectionResourceAlias,
  );

  final TfArg<String> privateConnectionResourceAlias;

  @internal
  @override
  String get blockKey => 'private_connection_resource_alias';

  @internal
  @override
  Map<String, Object?> encode() => {
    'private_connection_resource_alias': privateConnectionResourceAlias
        .toTfJson(),
  };
}

/// The [PrivateEndpointPrivateConnectionResource.privateConnectionResourceId] choice: sets `private_connection_resource_id`.
final class PrivateEndpointPrivateConnectionResourceId
    extends PrivateEndpointPrivateConnectionResource {
  const PrivateEndpointPrivateConnectionResourceId(
    this.privateConnectionResourceId,
  );

  final TfArg<String> privateConnectionResourceId;

  @internal
  @override
  String get blockKey => 'private_connection_resource_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'private_connection_resource_id': privateConnectionResourceId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_private_endpoint`.
final class AzurermPrivateEndpoint extends Resource {
  static const String tfType = 'azurerm_private_endpoint';

  AzurermPrivateEndpoint(
    super.localName, {
    TfArg<String>? customNetworkInterfaceName,
    TfArg<String>? edgeZone,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    List<PrivateEndpointIpConfiguration>? ipConfiguration,
    PrivateEndpointPrivateDnsZoneGroup? privateDnsZoneGroup,
    required PrivateEndpointPrivateServiceConnection privateServiceConnection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_network_interface_name': ?customNetworkInterfaceName,
           'edge_zone': ?edgeZone,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           if (ipConfiguration != null)
             'ip_configuration': TfArg.literal([
               for (final e in ipConfiguration) e.encode(),
             ]),
           if (privateDnsZoneGroup != null)
             'private_dns_zone_group': TfArg.literal(
               privateDnsZoneGroup.encode(),
             ),
           'private_service_connection': TfArg.literal(
             privateServiceConnection.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateEndpoint>`.
  RefTo<AzurermPrivateEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_dns_configs` attribute.
  TfRef<List<Map<String, Object?>>> get customDnsConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_dns_configs');

  /// Reference to `network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interface');

  /// Reference to `private_dns_zone_configs` attribute.
  TfRef<List<Map<String, Object?>>> get privateDnsZoneConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_dns_zone_configs',
      );

  /// Reference to `custom_network_interface_name` attribute.
  TfRef<String> get customNetworkInterfaceName =>
      TfRef.attribute<String>(this, 'custom_network_interface_name');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
