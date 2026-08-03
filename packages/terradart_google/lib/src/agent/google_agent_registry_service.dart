// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_registry_service`.
const Set<String> _googleAgentRegistryServiceSensitive = <String>{};

/// `type` under `agent_spec`.
enum AgentRegistryServiceAgentSpecType implements TerraformEnum {
  noSpec('NO_SPEC'),
  a2aAgentCard('A2A_AGENT_CARD');

  const AgentRegistryServiceAgentSpecType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` under `mcp_server_spec`.
enum AgentRegistryServiceMcpServerSpecType implements TerraformEnum {
  noSpec('NO_SPEC'),
  toolSpec('TOOL_SPEC');

  const AgentRegistryServiceMcpServerSpecType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` under `endpoint_spec`.
enum AgentRegistryServiceEndpointSpecType implements TerraformEnum {
  noSpec('NO_SPEC');

  const AgentRegistryServiceEndpointSpecType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol_binding` under `interfaces`.
enum AgentRegistryServiceInterfacesProtocolBinding implements TerraformEnum {
  jsonrpc('JSONRPC'),
  grpc('GRPC'),
  httpJson('HTTP_JSON');

  const AgentRegistryServiceInterfacesProtocolBinding(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of agent / MCP server / endpoint spec (MM `exactly_one_of`).
sealed class AgentRegistryServiceSpec {
  const AgentRegistryServiceSpec();

  String get blockKey;
  Map<String, Object?> encode();
}

/// `agent_spec` — service type is Agent.
@immutable
final class AgentRegistryServiceAgentSpec extends AgentRegistryServiceSpec {
  const AgentRegistryServiceAgentSpec({required this.type, this.content});

  final AgentRegistryServiceAgentSpecType type;
  final TfArg<String>? content;

  @override
  String get blockKey => 'agent_spec';

  @override
  Map<String, Object?> encode() => {
    'type': type.terraformValue,
    if (content != null) 'content': content!.toTfJson(),
  };
}

/// `mcp_server_spec` — service type is MCP Server.
@immutable
final class AgentRegistryServiceMcpServerSpec extends AgentRegistryServiceSpec {
  const AgentRegistryServiceMcpServerSpec({required this.type, this.content});

  final AgentRegistryServiceMcpServerSpecType type;
  final TfArg<String>? content;

  @override
  String get blockKey => 'mcp_server_spec';

  @override
  Map<String, Object?> encode() => {
    'type': type.terraformValue,
    if (content != null) 'content': content!.toTfJson(),
  };
}

/// `endpoint_spec` — service type is Endpoint.
@immutable
final class AgentRegistryServiceEndpointSpec extends AgentRegistryServiceSpec {
  const AgentRegistryServiceEndpointSpec({required this.type});

  final AgentRegistryServiceEndpointSpecType type;

  @override
  String get blockKey => 'endpoint_spec';

  @override
  Map<String, Object?> encode() => {'type': type.terraformValue};
}

/// Typed helper for the `interfaces` block.
@immutable
final class AgentRegistryServiceInterfaces {
  const AgentRegistryServiceInterfaces({
    required this.protocolBinding,
    required this.url,
  });

  final AgentRegistryServiceInterfacesProtocolBinding protocolBinding;
  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'protocol_binding': protocolBinding.terraformValue,
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `google_agent_registry_service`.
///
/// Service manages a service in a management boundary
///
/// Agent Registry **service** — registers an agent / MCP / endpoint
/// surface. Pass exactly one [AgentRegistryServiceSpec] variant
/// (`agent_spec` / `mcp_server_spec` / `endpoint_spec`).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (no Agent Identity / Agent Registry service in
/// `list_services`). billing-behavior: registry service metadata — no
/// existence/hourly charge observed. Not standalone-project applyable on
/// `terradart-validate` without Agent Identity scaffolding. **Never** wire
/// into apply-smoke.
final class GoogleAgentRegistryService extends Resource {
  static const String tfType = 'google_agent_registry_service';

  GoogleAgentRegistryService({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> serviceId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required AgentRegistryServiceSpec spec,
    List<AgentRegistryServiceInterfaces>? interfaces,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'service_id': serviceId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (interfaces != null)
             'interfaces': TfArg.literal([
               for (final e in interfaces) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           spec.blockKey: TfArg.literal([spec.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `registry_resource` attribute.
  TfRef<String> get registryResource =>
      TfRef.attribute<String>(this, 'registry_resource');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
