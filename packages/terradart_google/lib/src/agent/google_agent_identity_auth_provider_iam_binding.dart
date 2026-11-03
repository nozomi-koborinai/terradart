// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../agent/google_agent_identity_auth_provider.dart'
    show GoogleAgentIdentityAuthProvider;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_agent_identity_auth_provider_iam_binding`.
const Set<String> _googleAgentIdentityAuthProviderIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_agent_identity_auth_provider_iam_binding` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderIamBindingCondition {
  const AgentIdentityAuthProviderIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_agent_identity_auth_provider_iam_binding`.
///
/// Authoritative IAM binding for a single `role`.
///
/// Replaces the entire member list for that role, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_agent_identity_auth_provider_iam_member` for single grants.
final class GoogleAgentIdentityAuthProviderIamBinding extends Resource {
  static const String tfType =
      'google_agent_identity_auth_provider_iam_binding';

  GoogleAgentIdentityAuthProviderIamBinding(
    super.localName, {
    required RefTo<GoogleAgentIdentityAuthProvider> authProvider,
    TfArg<String>? location,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    AgentIdentityAuthProviderIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_provider_id': authProvider.encodeAs('auth_provider_id'),
           'location': ?(location ?? authProvider.alsoAs('location')),
           'members': members,
           'project': ?(project ?? authProvider.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgentIdentityAuthProviderIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentIdentityAuthProviderIamBinding>`.
  RefTo<GoogleAgentIdentityAuthProviderIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderId =>
      TfRef.attribute<String>(this, 'auth_provider_id');

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
