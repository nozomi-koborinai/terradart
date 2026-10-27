// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_traffic_manager_external_endpoint`.
const Set<String> _azurermTrafficManagerExternalEndpointSensitive = <String>{};

/// Typed helper for the `custom_header` block of
/// `azurerm_traffic_manager_external_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerExternalEndpointCustomHeader {
  const TrafficManagerExternalEndpointCustomHeader({
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
/// `azurerm_traffic_manager_external_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerExternalEndpointSubnet {
  const TrafficManagerExternalEndpointSubnet({
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

/// Factory wrapper for `azurerm_traffic_manager_external_endpoint`.
final class AzurermTrafficManagerExternalEndpoint extends Resource {
  static const String tfType = 'azurerm_traffic_manager_external_endpoint';

  AzurermTrafficManagerExternalEndpoint(
    super.localName, {
    TfArg<bool>? alwaysServeEnabled,
    TfArg<bool>? enabled,
    TfArg<String>? endpointLocation,
    TfArg<List<String>>? geoMappings,
    required TfArg<String> name,
    TfArg<num>? priority,
    required TfArg<String> profileId,
    required TfArg<String> target,
    TfArg<num>? weight,
    List<TrafficManagerExternalEndpointCustomHeader>? customHeader,
    List<TrafficManagerExternalEndpointSubnet>? subnet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'always_serve_enabled': ?alwaysServeEnabled,
           'enabled': ?enabled,
           'endpoint_location': ?endpointLocation,
           'geo_mappings': ?geoMappings,
           'name': name,
           'priority': ?priority,
           'profile_id': profileId,
           'target': target,
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
      _azurermTrafficManagerExternalEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermTrafficManagerExternalEndpoint>`.
  RefTo<AzurermTrafficManagerExternalEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `always_serve_enabled` attribute.
  TfRef<bool> get alwaysServeEnabled =>
      TfRef.attribute<bool>(this, 'always_serve_enabled');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `endpoint_location` attribute.
  TfRef<String> get endpointLocation =>
      TfRef.attribute<String>(this, 'endpoint_location');

  /// Reference to `geo_mappings` attribute.
  TfRef<List<String>> get geoMappings =>
      TfRef.attribute<List<String>>(this, 'geo_mappings');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `weight` attribute.
  TfRef<num> get weight => TfRef.attribute<num>(this, 'weight');
}
