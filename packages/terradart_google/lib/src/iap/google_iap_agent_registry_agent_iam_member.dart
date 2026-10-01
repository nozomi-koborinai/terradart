// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_agent_registry_agent_iam_member`.
const Set<String> _googleIapAgentRegistryAgentIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_agent_registry_agent_iam_member` (derived from provider schema).
@immutable
final class IapAgentRegistryAgentIamMemberCondition {
  const IapAgentRegistryAgentIamMemberCondition({
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

/// Factory wrapper for `google_iap_agent_registry_agent_iam_member`.
///
/// Non-authoritative IAM member on an Identity-Aware Proxy Agent Registry
/// **agent**.
///
/// Requires an Agent Identity registry agent parent
/// (`google_agent_registry_*` — skip-noted); not standalone-project
/// applyable on terradart-validate.
final class GoogleIapAgentRegistryAgentIamMember extends Resource {
  static const String tfType = 'google_iap_agent_registry_agent_iam_member';

  GoogleIapAgentRegistryAgentIamMember({
    required super.localName,
    required TfArg<String> agentId,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    TfArg<String>? project,
    IapAgentRegistryAgentIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           'role': role,
           'member': member,
           'location': ?location,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAgentRegistryAgentIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryAgentIamMember>`.
  RefTo<GoogleIapAgentRegistryAgentIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
