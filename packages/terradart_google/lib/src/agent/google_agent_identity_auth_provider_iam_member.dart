// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../agent/google_agent_identity_auth_provider.dart'
    show GoogleAgentIdentityAuthProvider;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_agent_identity_auth_provider_iam_member`.
const Set<String> _googleAgentIdentityAuthProviderIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_agent_identity_auth_provider_iam_member` (derived from provider schema).
@immutable
final class AgentIdentityAuthProviderIamMemberCondition {
  const AgentIdentityAuthProviderIamMemberCondition({
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

/// Factory wrapper for `google_agent_identity_auth_provider_iam_member`.
final class GoogleAgentIdentityAuthProviderIamMember extends Resource {
  static const String tfType = 'google_agent_identity_auth_provider_iam_member';

  GoogleAgentIdentityAuthProviderIamMember(
    super.localName, {
    required RefTo<GoogleAgentIdentityAuthProvider> authProvider,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    AgentIdentityAuthProviderIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_provider_id': authProvider.encodeAs('auth_provider_id'),
           'location': ?(location ?? authProvider.alsoAs('location')),
           'member': member,
           'project': ?(project ?? authProvider.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAgentIdentityAuthProviderIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAgentIdentityAuthProviderIamMember>`.
  RefTo<GoogleAgentIdentityAuthProviderIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `auth_provider_id` attribute.
  TfRef<String> get authProviderId =>
      TfRef.attribute<String>(this, 'auth_provider_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
