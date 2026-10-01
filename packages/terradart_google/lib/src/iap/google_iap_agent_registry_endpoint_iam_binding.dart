// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_agent_registry_endpoint_iam_binding`.
const Set<String> _googleIapAgentRegistryEndpointIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_agent_registry_endpoint_iam_binding` (derived from provider schema).
@immutable
final class IapAgentRegistryEndpointIamBindingCondition {
  const IapAgentRegistryEndpointIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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

  GoogleIapAgentRegistryEndpointIamBinding(
    super.localName, {
    required TfArg<String> endpointId,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    IapAgentRegistryEndpointIamBindingCondition? condition,
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
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
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

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
