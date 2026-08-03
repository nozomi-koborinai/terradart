// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_agent_gateway`.
const Set<String> _googleNetworkServicesAgentGatewaySensitive = <String>{};

/// `governed_access_path` under `google_managed`.
enum NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath
    implements TerraformEnum {
  agentToAnywhere('AGENT_TO_ANYWHERE'),
  clientToAgent('CLIENT_TO_AGENT');

  const NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of google_managed / self_managed (MM `exactly_one_of`).
sealed class NetworkServicesAgentGatewayDeployment {
  const NetworkServicesAgentGatewayDeployment();

  String get blockKey;
  Map<String, Object?> encode();
}

/// `google_managed` — proxy orchestrated in a Google tenant project.
@immutable
final class NetworkServicesAgentGatewayGoogleManaged
    extends NetworkServicesAgentGatewayDeployment {
  const NetworkServicesAgentGatewayGoogleManaged({
    required this.governedAccessPath,
  });

  final NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath
  governedAccessPath;

  @override
  String get blockKey => 'google_managed';

  @override
  Map<String, Object?> encode() => {
    'governed_access_path': governedAccessPath.terraformValue,
  };
}

/// `self_managed` — attach an existing networking proxy in-project.
@immutable
final class NetworkServicesAgentGatewaySelfManaged
    extends NetworkServicesAgentGatewayDeployment {
  const NetworkServicesAgentGatewaySelfManaged({required this.resourceUri});

  final TfArg<String> resourceUri;

  @override
  String get blockKey => 'self_managed';

  @override
  Map<String, Object?> encode() => {'resource_uri': resourceUri.toTfJson()};
}

/// Typed helper for the `network_config` block of
/// `google_network_services_agent_gateway` (derived from provider schema).
@immutable
final class NetworkServicesAgentGatewayNetworkConfig {
  const NetworkServicesAgentGatewayNetworkConfig({
    this.dnsPeeringConfig,
    required this.egress,
  });

  final NetworkServicesAgentGatewayNetworkConfigDnsPeeringConfig?
  dnsPeeringConfig;

  final NetworkServicesAgentGatewayNetworkConfigEgress egress;

  Map<String, Object?> encode() => {
    if (dnsPeeringConfig != null)
      'dns_peering_config': dnsPeeringConfig!.encode(),
    'egress': egress.encode(),
  };
}

/// Typed helper for the `network_config.dns_peering_config` block of
/// `google_network_services_agent_gateway` (derived from provider schema).
@immutable
final class NetworkServicesAgentGatewayNetworkConfigDnsPeeringConfig {
  const NetworkServicesAgentGatewayNetworkConfigDnsPeeringConfig({
    required this.domains,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<List<Object?>> domains;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  Map<String, Object?> encode() => {
    'domains': domains.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `network_config.egress` block of
/// `google_network_services_agent_gateway` (derived from provider schema).
@immutable
final class NetworkServicesAgentGatewayNetworkConfigEgress {
  const NetworkServicesAgentGatewayNetworkConfigEgress({
    required this.networkAttachment,
  });

  final TfArg<String> networkAttachment;

  Map<String, Object?> encode() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_agent_gateway`.
///
/// AgentGateway represents the agent gateway resource.
///
/// Network Services **Agent Gateway** — ingress for Agent Identity /
/// Agent Registry traffic. Pass exactly one
/// [NetworkServicesAgentGatewayDeployment]:
/// - [NetworkServicesAgentGatewayGoogleManaged] — Google-orchestrated
///   proxy (`governedAccessPath`: `AGENT_TO_ANYWHERE` /
///   `CLIENT_TO_AGENT`).
/// - [NetworkServicesAgentGatewaySelfManaged] — attach an existing
///   Application LB / Secure Web Proxy via `resourceUri`.
///
/// **Cost / apply:** gcp-cost: Networking `E505-1604-58F8` and Vertex AI
/// `C7E2-9256-1C43` list_skus keyword=Agent/Agent Gateway → 0 dedicated
/// SKUs. billing-behavior: google_managed provisions a tenant-project
/// proxy; self_managed attaches to existing SWG/LB (SWG sibling
/// `google_network_services_gateway` is never_apply at **$1.25/h**).
/// Needs network attachment + Agent Registry URI scaffolding — not
/// standalone-project applyable on terradart-validate. Ships
/// `never_apply` / `tool/example_debt.yaml`.
///
/// Enable `networkservices.googleapis.com` (and Agent Registry) before
/// apply.
final class GoogleNetworkServicesAgentGateway extends Resource {
  static const String tfType = 'google_network_services_agent_gateway';

  GoogleNetworkServicesAgentGateway({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required NetworkServicesAgentGatewayDeployment deployment,
    TfArg<String>? description,
    TfArg<List<String>>? protocols,
    TfArg<List<String>>? registries,
    NetworkServicesAgentGatewayNetworkConfig? networkConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (description != null) 'description': description,
           if (protocols != null) 'protocols': protocols,
           if (registries != null) 'registries': registries,
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           deployment.blockKey: TfArg.literal([deployment.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesAgentGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_gateway_card` attribute.
  TfRef<List<Map<String, Object?>>> get agentGatewayCard =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'agent_gateway_card');

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
