// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_traffic_manager_azure_endpoint`.
const Set<String> _azurermTrafficManagerAzureEndpointSensitive = <String>{};

/// Typed helper for the `custom_header` block of
/// `azurerm_traffic_manager_azure_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerAzureEndpointCustomHeader {
  const TrafficManagerAzureEndpointCustomHeader({
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
/// `azurerm_traffic_manager_azure_endpoint` (derived from provider schema).
@immutable
final class TrafficManagerAzureEndpointSubnet {
  const TrafficManagerAzureEndpointSubnet({
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

/// Factory wrapper for `azurerm_traffic_manager_azure_endpoint`.
final class AzurermTrafficManagerAzureEndpoint extends Resource {
  static const String tfType = 'azurerm_traffic_manager_azure_endpoint';

  AzurermTrafficManagerAzureEndpoint(
    super.localName, {
    TfArg<bool>? alwaysServeEnabled,
    TfArg<bool>? enabled,
    TfArg<List<String>>? geoMappings,
    required TfArg<String> name,
    TfArg<num>? priority,
    required TfArg<String> profileId,
    required TfArg<String> targetResourceId,
    TfArg<num>? weight,
    List<TrafficManagerAzureEndpointCustomHeader>? customHeader,
    List<TrafficManagerAzureEndpointSubnet>? subnet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'always_serve_enabled': ?alwaysServeEnabled,
           'enabled': ?enabled,
           'geo_mappings': ?geoMappings,
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
      _azurermTrafficManagerAzureEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermTrafficManagerAzureEndpoint>`.
  RefTo<AzurermTrafficManagerAzureEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `always_serve_enabled` attribute.
  TfRef<bool> get alwaysServeEnabled =>
      TfRef.attribute<bool>(this, 'always_serve_enabled');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `geo_mappings` attribute.
  TfRef<List<String>> get geoMappings =>
      TfRef.attribute<List<String>>(this, 'geo_mappings');

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
