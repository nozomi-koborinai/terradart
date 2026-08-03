// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_endpoint_iam_member`.
const Set<String> _googleIapAgentRegistryEndpointIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_endpoint_iam_member`.
///
/// Non-authoritative IAM member on an Identity-Aware Proxy Agent Registry
/// **endpoint**.
///
/// Requires an Agent Identity registry endpoint parent
/// (`google_agent_registry_*` — skip-noted); not standalone-project
/// applyable on terradart-validate.
final class GoogleIapAgentRegistryEndpointIamMember extends Resource {
  static const String tfType = 'google_iap_agent_registry_endpoint_iam_member';

  GoogleIapAgentRegistryEndpointIamMember({
    required super.localName,
    required TfArg<String> endpointId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryEndpointIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
