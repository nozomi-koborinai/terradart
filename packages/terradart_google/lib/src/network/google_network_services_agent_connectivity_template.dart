// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_agent_connectivity_template`.
const Set<String> _googleNetworkServicesAgentConnectivityTemplateSensitive =
    <String>{};

/// Network Services Agent Connectivity Template Access enum for `access_path`.
extension type const NetworkServicesAgentConnectivityTemplateAccessPath._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesAgentConnectivityTemplateAccessPath.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesAgentConnectivityTemplateAccessPath.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesAgentConnectivityTemplateAccessPath.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const clientToAgent =
      NetworkServicesAgentConnectivityTemplateAccessPath._(
        TfArgLiteral('CLIENT_TO_AGENT'),
      );
  static const agentToAnywhere =
      NetworkServicesAgentConnectivityTemplateAccessPath._(
        TfArgLiteral('AGENT_TO_ANYWHERE'),
      );

  static const List<NetworkServicesAgentConnectivityTemplateAccessPath> values =
      [clientToAgent, agentToAnywhere];
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

  final NetworkServicesAgentConnectivityTemplateVpcEgress? vpcEgress;

  final NetworkServicesAgentConnectivityTemplateDnsPeeringConfig?
  dnsPeeringConfig;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    'vpc_egress': ?vpcEgress?.toTfJson(),
    'dns_peering_config': ?dnsPeeringConfig?.encode(),
  };
}

/// `vpc_egress` — derived from the provider schema description.
extension type const NetworkServicesAgentConnectivityTemplateVpcEgress._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesAgentConnectivityTemplateVpcEgress.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesAgentConnectivityTemplateVpcEgress.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesAgentConnectivityTemplateVpcEgress.arg(TfArg<String> arg)
    : this._(arg);

  static const allTraffic = NetworkServicesAgentConnectivityTemplateVpcEgress._(
    TfArgLiteral('ALL_TRAFFIC'),
  );
  static const privateRangesOnly =
      NetworkServicesAgentConnectivityTemplateVpcEgress._(
        TfArgLiteral('PRIVATE_RANGES_ONLY'),
      );

  static const List<NetworkServicesAgentConnectivityTemplateVpcEgress> values =
      [allTraffic, privateRangesOnly];
}

/// Typed helper for the `egress_network_config.dns_peering_config` block of
/// `google_network_services_agent_connectivity_template` (derived from provider schema).
@immutable
final class NetworkServicesAgentConnectivityTemplateDnsPeeringConfig {
  const NetworkServicesAgentConnectivityTemplateDnsPeeringConfig({
    required this.domain,
    required this.targetNetwork,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  @internal
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

  GoogleNetworkServicesAgentConnectivityTemplate(
    super.localName, {
    required TfArg<String> agentConnectivityTemplateId,
    required TfArg<String> location,
    required NetworkServicesAgentConnectivityTemplateAccessPath accessPath,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get accessPath => TfRef.attribute<String>(this, 'access_path');

  /// Reference to `access_types` attribute.
  TfRef<List<String>> get accessTypes =>
      TfRef.attribute<List<String>>(this, 'access_types');

  /// Reference to `agent_connectivity_template_id` attribute.
  TfRef<String> get agentConnectivityTemplateId =>
      TfRef.attribute<String>(this, 'agent_connectivity_template_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
