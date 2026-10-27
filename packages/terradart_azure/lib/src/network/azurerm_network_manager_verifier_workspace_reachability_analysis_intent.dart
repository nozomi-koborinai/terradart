// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_verifier_workspace_reachability_analysis_intent`.
const Set<String>
_azurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntentSensitive =
    <String>{};

/// Typed helper for the `ip_traffic` block of
/// `azurerm_network_manager_verifier_workspace_reachability_analysis_intent` (derived from provider schema).
@immutable
final class NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic {
  const NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic({
    required this.destinationIps,
    required this.destinationPorts,
    required this.protocols,
    required this.sourceIps,
    required this.sourcePorts,
  });

  final TfArg<List<String>> destinationIps;

  final TfArg<List<String>> destinationPorts;

  final List<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols>
  protocols;

  final TfArg<List<String>> sourceIps;

  final TfArg<List<String>> sourcePorts;

  @internal
  Map<String, Object?> encode() => {
    'destination_ips': destinationIps.toTfJson(),
    'destination_ports': destinationPorts.toTfJson(),
    'protocols': [for (final e in protocols) e.toTfJson()],
    'source_ips': sourceIps.toTfJson(),
    'source_ports': sourcePorts.toTfJson(),
  };
}

/// `protocols` — derived from the provider schema description.
extension type const NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const any =
      NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols._(
        TfArgLiteral('Any'),
      );
  static const icmp =
      NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols._(
        TfArgLiteral('ICMP'),
      );
  static const tcp =
      NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols._(
        TfArgLiteral('UDP'),
      );

  static const List<
    NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols
  >
  values = [any, icmp, tcp, udp];
}

/// Factory wrapper for `azurerm_network_manager_verifier_workspace_reachability_analysis_intent`.
final class AzurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent
    extends Resource {
  static const String tfType =
      'azurerm_network_manager_verifier_workspace_reachability_analysis_intent';

  AzurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> destinationResourceId,
    required TfArg<String> name,
    required TfArg<String> sourceResourceId,
    required TfArg<String> verifierWorkspaceId,
    required NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic
    ipTraffic,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'destination_resource_id': destinationResourceId,
           'name': name,
           'source_resource_id': sourceResourceId,
           'verifier_workspace_id': verifierWorkspaceId,
           'ip_traffic': TfArg.literal(ipTraffic.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent>`.
  RefTo<AzurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_resource_id` attribute.
  TfRef<String> get destinationResourceId =>
      TfRef.attribute<String>(this, 'destination_resource_id');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `verifier_workspace_id` attribute.
  TfRef<String> get verifierWorkspaceId =>
      TfRef.attribute<String>(this, 'verifier_workspace_id');
}
