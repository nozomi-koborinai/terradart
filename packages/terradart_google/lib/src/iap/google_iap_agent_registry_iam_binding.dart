// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_iam_binding`.
const Set<String> _googleIapAgentRegistryIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on the Identity-Aware
/// Proxy **Agent Registry** at a regional location.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapAgentRegistryIamMember] for additive grants.
final class GoogleIapAgentRegistryIamBinding extends Resource {
  static const String tfType = 'google_iap_agent_registry_iam_binding';

  GoogleIapAgentRegistryIamBinding({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapAgentRegistryIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
