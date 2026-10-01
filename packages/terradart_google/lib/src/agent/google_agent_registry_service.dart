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

  /// `agent_spec` — service type is Agent.
  const factory AgentRegistryServiceSpec.agent({
    required AgentRegistryServiceAgentSpecType type,
    TfArg<String>? content,
  }) = AgentRegistryServiceAgentSpec;

  /// `mcp_server_spec` — service type is MCP Server.
  const factory AgentRegistryServiceSpec.mcpServer({
    required AgentRegistryServiceMcpServerSpecType type,
    TfArg<String>? content,
  }) = AgentRegistryServiceMcpServerSpec;

  /// `endpoint_spec` — service type is Endpoint.
  const factory AgentRegistryServiceSpec.endpoint({
    required AgentRegistryServiceEndpointSpecType type,
  }) = AgentRegistryServiceEndpointSpec;

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

  GoogleAgentRegistryService(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'service_id': serviceId,
           'display_name': ?displayName,
           'description': ?description,
           if (interfaces != null)
             'interfaces': TfArg.literal([
               for (final e in interfaces) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           spec.blockKey: TfArg.literal([spec.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentRegistryService>`.
  RefTo<GoogleAgentRegistryService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `registry_resource` attribute.
  TfRef<String> get registryResource =>
      TfRef.attribute<String>(this, 'registry_resource');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
