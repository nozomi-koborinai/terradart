// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_agent_connectivity_template`.
const Set<String> _googleNetworkServicesAgentConnectivityTemplateSensitive =
    <String>{};

/// Factory wrapper for `google_network_services_agent_connectivity_template`.
///
/// AgentConnectivityTemplate represents a reusable network configuration.
final class GoogleNetworkServicesAgentConnectivityTemplate extends Resource {
  static const String tfType =
      'google_network_services_agent_connectivity_template';

  GoogleNetworkServicesAgentConnectivityTemplate({
    required super.localName,
    required TfArg<String> accessPath,
    TfArg<List<String>>? accessTypes,
    required TfArg<String> agentConnectivityTemplateId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? egressNetworkConfig,
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
             'egress_network_config': egressNetworkConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesAgentConnectivityTemplateSensitive;
}
