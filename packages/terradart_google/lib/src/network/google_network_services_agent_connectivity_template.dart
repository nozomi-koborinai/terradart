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
    'network_attachment': ?networkAttachment?.toTfJson(),
    'vpc_egress': ?vpcEgress?.toTfJson(),
    'dns_peering_config': ?dnsPeeringConfig?.encode(),
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
    required TfArg<String> agentConnectivityTemplateId,
    required TfArg<String> location,
    required TfArg<NetworkServicesAgentConnectivityTemplateAccessPath>
    accessPath,
    TfArg<List<String>>? accessTypes,
    NetworkServicesAgentConnectivityTemplateEgressNetworkConfig?
    egressNetworkConfig,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_connectivity_template_id': agentConnectivityTemplateId,
           'location': location,
           'access_path': accessPath,
           'access_types': ?accessTypes,
           if (egressNetworkConfig != null)
             'egress_network_config': TfArg.literal(
               egressNetworkConfig.encode(),
             ),
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesAgentConnectivityTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesAgentConnectivityTemplate>`.
  RefTo<GoogleNetworkServicesAgentConnectivityTemplate> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `access_path` attribute.
  TfRef<String> get accessPathRef =>
      TfRef.attribute<String>(this, 'access_path');

  /// Reference to `access_types` attribute.
  TfRef<List<String>> get accessTypesRef =>
      TfRef.attribute<List<String>>(this, 'access_types');

  /// Reference to `agent_connectivity_template_id` attribute.
  TfRef<String> get agentConnectivityTemplateIdRef =>
      TfRef.attribute<String>(this, 'agent_connectivity_template_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
