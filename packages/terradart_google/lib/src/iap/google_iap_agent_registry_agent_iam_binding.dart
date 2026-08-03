// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_agent_iam_binding`.
const Set<String> _googleIapAgentRegistryAgentIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_agent_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP Agent Registry
/// **agent**.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapAgentRegistryAgentIamMember] for additive grants. Deferred
/// with the Agent Identity registry agent parent (skip-noted).
final class GoogleIapAgentRegistryAgentIamBinding extends Resource {
  static const String tfType = 'google_iap_agent_registry_agent_iam_binding';

  GoogleIapAgentRegistryAgentIamBinding({
    required super.localName,
    required TfArg<String> agentId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryAgentIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
