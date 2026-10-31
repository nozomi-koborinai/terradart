// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_function_collector_policy`.
const Set<String> _azurermNetworkFunctionCollectorPolicySensitive = <String>{};

/// Typed helper for the `ipfx_emission` block of
/// `azurerm_network_function_collector_policy` (derived from provider schema).
@immutable
final class NetworkFunctionCollectorPolicyIpfxEmission {
  const NetworkFunctionCollectorPolicyIpfxEmission({
    required this.destinationTypes,
  });

  final EnumList<NetworkFunctionCollectorPolicyDestinationTypes>
  destinationTypes;

  @internal
  Map<String, Object?> encode() => {
    'destination_types': destinationTypes.toTfJson(),
  };
}

/// `destination_types` — derived from the provider schema description.
extension type const NetworkFunctionCollectorPolicyDestinationTypes._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkFunctionCollectorPolicyDestinationTypes.variable(String name)
    : this._(TfArg.variable(name));
  NetworkFunctionCollectorPolicyDestinationTypes.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkFunctionCollectorPolicyDestinationTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const azuremonitor = NetworkFunctionCollectorPolicyDestinationTypes._(
    TfArgLiteral('AzureMonitor'),
  );

  static const List<NetworkFunctionCollectorPolicyDestinationTypes> values = [
    azuremonitor,
  ];
}

/// Typed helper for the `ipfx_ingestion` block of
/// `azurerm_network_function_collector_policy` (derived from provider schema).
@immutable
final class NetworkFunctionCollectorPolicyIpfxIngestion {
  const NetworkFunctionCollectorPolicyIpfxIngestion({
    required this.sourceResourceIds,
  });

  final TfArg<List<String>> sourceResourceIds;

  @internal
  Map<String, Object?> encode() => {
    'source_resource_ids': sourceResourceIds.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_function_collector_policy`.
final class AzurermNetworkFunctionCollectorPolicy extends Resource {
  static const String tfType = 'azurerm_network_function_collector_policy';

  AzurermNetworkFunctionCollectorPolicy(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trafficCollectorId,
    required NetworkFunctionCollectorPolicyIpfxEmission ipfxEmission,
    required NetworkFunctionCollectorPolicyIpfxIngestion ipfxIngestion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'tags': ?tags,
           'traffic_collector_id': trafficCollectorId,
           'ipfx_emission': TfArg.literal(ipfxEmission.encode()),
           'ipfx_ingestion': TfArg.literal(ipfxIngestion.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkFunctionCollectorPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkFunctionCollectorPolicy>`.
  RefTo<AzurermNetworkFunctionCollectorPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_collector_id` attribute.
  TfRef<String> get trafficCollectorId =>
      TfRef.attribute<String>(this, 'traffic_collector_id');
}
