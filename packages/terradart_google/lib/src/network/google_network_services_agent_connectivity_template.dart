// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_agent_connectivity_template`.
const Set<String> _googleNetworkServicesAgentConnectivityTemplateSensitive =
    <String>{};

/// Network Services Agent Connectivity Template Access enum for `access_path`.
enum NetworkServicesAgentConnectivityTemplateAccessPath
    implements TerraformEnum {
  clientToAgent('CLIENT_TO_AGENT'),
  agentToAnywhere('AGENT_TO_ANYWHERE');

  const NetworkServicesAgentConnectivityTemplateAccessPath(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `egress_network_config` block of
/// `google_network_services_agent_connectivity_template` (derived from provider schema).
@immutable
final class NetworkServicesAgentConnectivityTemplateEgressNetworkConfig {
  const NetworkServicesAgentConnectivityTemplateEgressNetworkConfig({
    this.networkAttachment,
    this.vpcEgress,
    this.dnsPeeringConfig,
  });

  final TfArg<String>? networkAttachment;

  final TfArg<
    NetworkServicesAgentConnectivityTemplateEgressNetworkConfigVpcEgress
  >?
  vpcEgress;

  final NetworkServicesAgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig?
  dnsPeeringConfig;

  Map<String, Object?> encode() => {
    if (networkAttachment != null)
      'network_attachment': networkAttachment!.toTfJson(),
    if (vpcEgress != null) 'vpc_egress': vpcEgress!.toTfJson(),
    if (dnsPeeringConfig != null)
      'dns_peering_config': dnsPeeringConfig!.encode(),
  };
}

/// `vpc_egress` — derived from the provider schema description.
enum NetworkServicesAgentConnectivityTemplateEgressNetworkConfigVpcEgress
    implements TerraformEnum {
  allTraffic('ALL_TRAFFIC'),
  privateRangesOnly('PRIVATE_RANGES_ONLY');

  const NetworkServicesAgentConnectivityTemplateEgressNetworkConfigVpcEgress(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `egress_network_config.dns_peering_config` block of
/// `google_network_services_agent_connectivity_template` (derived from provider schema).
@immutable
final class NetworkServicesAgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig {
  const NetworkServicesAgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig({
    required this.domain,
    required this.targetNetwork,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_agent_connectivity_template`.
///
/// AgentConnectivityTemplate represents a reusable network configuration.
final class GoogleNetworkServicesAgentConnectivityTemplate extends Resource {
  static const String tfType =
      'google_network_services_agent_connectivity_template';

  GoogleNetworkServicesAgentConnectivityTemplate({
    required super.localName,
    required TfArg<NetworkServicesAgentConnectivityTemplateAccessPath>
    accessPath,
    TfArg<List<String>>? accessTypes,
    required TfArg<String> agentConnectivityTemplateId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    NetworkServicesAgentConnectivityTemplateEgressNetworkConfig?
    egressNetworkConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_path': accessPath,
           if (accessTypes != null) 'access_types': accessTypes,
           'agent_connectivity_template_id': agentConnectivityTemplateId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           if (egressNetworkConfig != null)
             'egress_network_config': TfArg.literal(
               egressNetworkConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesAgentConnectivityTemplateSensitive;
}
