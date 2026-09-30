// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_endpoint_iam_policy`.
const Set<String> _googleIapAgentRegistryEndpointIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_agent_registry_endpoint_iam_policy`.
///
/// Authoritative IAM policy for an IAP Agent Registry **endpoint**.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAgentRegistryEndpointIamMember] for single-principal grants.
/// Deferred with the Agent Identity registry endpoint parent (skip-noted).
final class GoogleIapAgentRegistryEndpointIamPolicy extends Resource {
  static const String tfType = 'google_iap_agent_registry_endpoint_iam_policy';

  GoogleIapAgentRegistryEndpointIamPolicy({
    required super.localName,
    required TfArg<String> endpointId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryEndpointIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryEndpointIamPolicy>`.
  RefTo<GoogleIapAgentRegistryEndpointIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointIdRef =>
      TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
