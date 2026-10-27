// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_traffic_manager_nested_endpoint`.
const Set<String> _azurermTrafficManagerNestedEndpointSensitive = <String>{};

/// Typed helper for the `custom_header` block of
/// `azurerm_traffic_manager_nested_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerNestedEndpointCustomHeader {
  const TrafficManagerNestedEndpointCustomHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `subnet` block of
/// `azurerm_traffic_manager_nested_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerNestedEndpointSubnet {
  const TrafficManagerNestedEndpointSubnet({
    required this.first,
    this.last,
    this.scope,
  });

  final TfArg<String> first;

  final TfArg<String>? last;

  final TfArg<num>? scope;

  @internal
  Map<String, Object?> encode() => {
    'first': first.toTfJson(),
    'last': ?last?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_traffic_manager_nested_endpoint`.
final class AzurermTrafficManagerNestedEndpoint extends Resource {
  static const String tfType = 'azurerm_traffic_manager_nested_endpoint';

  AzurermTrafficManagerNestedEndpoint(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? endpointLocation,
    TfArg<List<String>>? geoMappings,
    required TfArg<num> minimumChildEndpoints,
    TfArg<num>? minimumRequiredChildEndpointsIpv4,
    TfArg<num>? minimumRequiredChildEndpointsIpv6,
    required TfArg<String> name,
    TfArg<num>? priority,
    required TfArg<String> profileId,
    required TfArg<String> targetResourceId,
    TfArg<num>? weight,
    List<TrafficManagerNestedEndpointCustomHeader>? customHeader,
    List<TrafficManagerNestedEndpointSubnet>? subnet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'endpoint_location': ?endpointLocation,
           'geo_mappings': ?geoMappings,
           'minimum_child_endpoints': minimumChildEndpoints,
           'minimum_required_child_endpoints_ipv4':
               ?minimumRequiredChildEndpointsIpv4,
           'minimum_required_child_endpoints_ipv6':
               ?minimumRequiredChildEndpointsIpv6,
           'name': name,
           'priority': ?priority,
           'profile_id': profileId,
           'target_resource_id': targetResourceId,
           'weight': ?weight,
           if (customHeader != null)
             'custom_header': TfArg.literal([
               for (final e in customHeader) e.encode(),
             ]),
           if (subnet != null)
             'subnet': TfArg.literal([for (final e in subnet) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermTrafficManagerNestedEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermTrafficManagerNestedEndpoint>`.
  RefTo<AzurermTrafficManagerNestedEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `endpoint_location` attribute.
  TfRef<String> get endpointLocation =>
      TfRef.attribute<String>(this, 'endpoint_location');

  /// Reference to `geo_mappings` attribute.
  TfRef<List<String>> get geoMappings =>
      TfRef.attribute<List<String>>(this, 'geo_mappings');

  /// Reference to `minimum_child_endpoints` attribute.
  TfRef<num> get minimumChildEndpoints =>
      TfRef.attribute<num>(this, 'minimum_child_endpoints');

  /// Reference to `minimum_required_child_endpoints_ipv4` attribute.
  TfRef<num> get minimumRequiredChildEndpointsIpv4 =>
      TfRef.attribute<num>(this, 'minimum_required_child_endpoints_ipv4');

  /// Reference to `minimum_required_child_endpoints_ipv6` attribute.
  TfRef<num> get minimumRequiredChildEndpointsIpv6 =>
      TfRef.attribute<num>(this, 'minimum_required_child_endpoints_ipv6');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `weight` attribute.
  TfRef<num> get weight => TfRef.attribute<num>(this, 'weight');
}
