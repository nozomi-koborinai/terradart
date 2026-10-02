// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_registry_service`.
const Set<String> _googleAgentRegistryServiceSensitive = <String>{};

/// `type` under `agent_spec`.
extension type const AgentRegistryServiceAgentSpecType._(TfArg<String> _)
    implements TfArg<String> {
  AgentRegistryServiceAgentSpecType.variable(String name)
    : this._(TfArg.variable(name));
  AgentRegistryServiceAgentSpecType.expression(String template)
    : this._(TfArg.expression(template));
  const AgentRegistryServiceAgentSpecType.arg(TfArg<String> arg) : this._(arg);

  static const noSpec = AgentRegistryServiceAgentSpecType._(
    TfArgLiteral('NO_SPEC'),
  );
  static const a2aAgentCard = AgentRegistryServiceAgentSpecType._(
    TfArgLiteral('A2A_AGENT_CARD'),
  );

  static const List<AgentRegistryServiceAgentSpecType> values = [
    noSpec,
    a2aAgentCard,
  ];
}

/// `type` under `mcp_server_spec`.
extension type const AgentRegistryServiceMcpServerSpecType._(TfArg<String> _)
    implements TfArg<String> {
  AgentRegistryServiceMcpServerSpecType.variable(String name)
    : this._(TfArg.variable(name));
  AgentRegistryServiceMcpServerSpecType.expression(String template)
    : this._(TfArg.expression(template));
  const AgentRegistryServiceMcpServerSpecType.arg(TfArg<String> arg)
    : this._(arg);

  static const noSpec = AgentRegistryServiceMcpServerSpecType._(
    TfArgLiteral('NO_SPEC'),
  );
  static const toolSpec = AgentRegistryServiceMcpServerSpecType._(
    TfArgLiteral('TOOL_SPEC'),
  );

  static const List<AgentRegistryServiceMcpServerSpecType> values = [
    noSpec,
    toolSpec,
  ];
}

/// `type` under `endpoint_spec`.
extension type const AgentRegistryServiceEndpointSpecType._(TfArg<String> _)
    implements TfArg<String> {
  AgentRegistryServiceEndpointSpecType.variable(String name)
    : this._(TfArg.variable(name));
  AgentRegistryServiceEndpointSpecType.expression(String template)
    : this._(TfArg.expression(template));
  const AgentRegistryServiceEndpointSpecType.arg(TfArg<String> arg)
    : this._(arg);

  static const noSpec = AgentRegistryServiceEndpointSpecType._(
    TfArgLiteral('NO_SPEC'),
  );

  static const List<AgentRegistryServiceEndpointSpecType> values = [noSpec];
}

/// `protocol_binding` under `interfaces`.
extension type const AgentRegistryServiceInterfacesProtocolBinding._(
  TfArg<String> _
) implements TfArg<String> {
  AgentRegistryServiceInterfacesProtocolBinding.variable(String name)
    : this._(TfArg.variable(name));
  AgentRegistryServiceInterfacesProtocolBinding.expression(String template)
    : this._(TfArg.expression(template));
  const AgentRegistryServiceInterfacesProtocolBinding.arg(TfArg<String> arg)
    : this._(arg);

  static const jsonrpc = AgentRegistryServiceInterfacesProtocolBinding._(
    TfArgLiteral('JSONRPC'),
  );
  static const grpc = AgentRegistryServiceInterfacesProtocolBinding._(
    TfArgLiteral('GRPC'),
  );
  static const httpJson = AgentRegistryServiceInterfacesProtocolBinding._(
    TfArgLiteral('HTTP_JSON'),
  );

  static const List<AgentRegistryServiceInterfacesProtocolBinding> values = [
    jsonrpc,
    grpc,
    httpJson,
  ];
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
  const factory AgentRegistryServiceSpec.endpoint(
    AgentRegistryServiceEndpointSpecType type,
  ) = AgentRegistryServiceEndpointSpec;

  @internal
  String get blockKey;
  @internal
  Map<String, Object?> encode();
}

/// `agent_spec` — service type is Agent.
@immutable
final class AgentRegistryServiceAgentSpec extends AgentRegistryServiceSpec {
  const AgentRegistryServiceAgentSpec({required this.type, this.content});

  final AgentRegistryServiceAgentSpecType type;
  final TfArg<String>? content;

  @override
  @internal
  String get blockKey => 'agent_spec';

  @override
  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
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
  @internal
  String get blockKey => 'mcp_server_spec';

  @override
  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (content != null) 'content': content!.toTfJson(),
  };
}

/// `endpoint_spec` — service type is Endpoint.
@immutable
final class AgentRegistryServiceEndpointSpec extends AgentRegistryServiceSpec {
  const AgentRegistryServiceEndpointSpec(this.type);

  final AgentRegistryServiceEndpointSpecType type;

  @override
  @internal
  String get blockKey => 'endpoint_spec';

  @override
  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
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

  @internal
  Map<String, Object?> encode() => {
    'protocol_binding': protocolBinding.toTfJson(),
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
