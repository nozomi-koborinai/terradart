// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_endpoint_iam_binding`.
const Set<String> _googleIapAgentRegistryEndpointIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_endpoint_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP Agent Registry
/// **endpoint**.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapAgentRegistryEndpointIamMember] for additive grants. Deferred
/// with the Agent Identity registry endpoint parent (skip-noted).
final class GoogleIapAgentRegistryEndpointIamBinding extends Resource {
  static const String tfType = 'google_iap_agent_registry_endpoint_iam_binding';

  GoogleIapAgentRegistryEndpointIamBinding({
    required super.localName,
    required TfArg<String> endpointId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           'role': role,
           'members': members,
           'location': ?location,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryEndpointIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryEndpointIamBinding>`.
  RefTo<GoogleIapAgentRegistryEndpointIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
