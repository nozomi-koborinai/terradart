// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_hub_routing_intent`.
const Set<String> _azurermVirtualHubRoutingIntentSensitive = <String>{};

/// Typed helper for the `routing_policy` block of
/// `azurerm_virtual_hub_routing_intent` (derived from provider schema).
@immutable
final class VirtualHubRoutingIntentRoutingPolicy {
  const VirtualHubRoutingIntentRoutingPolicy({
    required this.destinations,
    required this.name,
    required this.nextHop,
  });

  final EnumList<VirtualHubRoutingIntentDestinations> destinations;

  final TfArg<String> name;

  final TfArg<String> nextHop;

  @internal
  Map<String, Object?> encode() => {
    'destinations': destinations.toTfJson(),
    'name': name.toTfJson(),
    'next_hop': nextHop.toTfJson(),
  };
}

/// `destinations` — derived from the provider schema description.
extension type const VirtualHubRoutingIntentDestinations._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubRoutingIntentDestinations.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubRoutingIntentDestinations.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubRoutingIntentDestinations.arg(TfArg<String> arg)
    : this._(arg);

  static const internet = VirtualHubRoutingIntentDestinations._(
    TfArgLiteral('Internet'),
  );
  static const privatetraffic = VirtualHubRoutingIntentDestinations._(
    TfArgLiteral('PrivateTraffic'),
  );

  static const List<VirtualHubRoutingIntentDestinations> values = [
    internet,
    privatetraffic,
  ];
}

/// Factory wrapper for `azurerm_virtual_hub_routing_intent`.
final class AzurermVirtualHubRoutingIntent extends Resource {
  static const String tfType = 'azurerm_virtual_hub_routing_intent';

  AzurermVirtualHubRoutingIntent(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> virtualHubId,
    required List<VirtualHubRoutingIntentRoutingPolicy> routingPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'virtual_hub_id': virtualHubId,
           'routing_policy': TfArg.literal([
             for (final e in routingPolicy) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubRoutingIntentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubRoutingIntent>`.
  RefTo<AzurermVirtualHubRoutingIntent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
