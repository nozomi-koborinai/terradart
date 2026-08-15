// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_agent_registry_mcp_server`.
const Set<String> _googleAgentRegistryMcpServerSensitive = <String>{};

/// Factory wrapper for `google_agent_registry_mcp_server`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAgentRegistryMcpServer extends Data {
  static const String tfType = 'google_agent_registry_mcp_server';

  DataGoogleAgentRegistryMcpServer({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? mcpServerId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           if (mcpServerId != null) 'mcp_server_id': mcpServerId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAgentRegistryMcpServerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get interfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'interfaces');

  /// Reference to `tools` attribute.
  TfRef<List<Map<String, Object?>>> get tools =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tools');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `urn` attribute.
  TfRef<String> get urn => TfRef.attribute<String>(this, 'urn');
}
