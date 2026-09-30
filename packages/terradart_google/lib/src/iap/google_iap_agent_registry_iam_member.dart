// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_agent_registry_iam_member`.
const Set<String> _googleIapAgentRegistryIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_agent_registry_iam_member` (derived from provider schema).
@immutable
final class IapAgentRegistryIamMemberCondition {
  const IapAgentRegistryIamMemberCondition({
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

/// Factory wrapper for `google_iap_agent_registry_iam_member`.
///
/// Additive IAM grant for Identity-Aware Proxy access on the **Agent
/// Registry** at a regional location.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [location]: regional location (e.g. `'us-central1'`).
/// - [role]: typically `'roles/iap.httpsResourceAccessor'`.
/// - [member]: IAM principal (`user:…`, `group:…`, `serviceAccount:…`).
///
/// Example:
/// ```dart
/// GoogleIapAgentRegistryIamMember(
///   localName: 'agent_registry_invoker',
///   location: TfArg.literal('us-central1'),
///   role: TfArg.literal('roles/iap.httpsResourceAccessor'),
///   member: TfArg.ref(sa.iamMember),
/// );
/// ```
final class GoogleIapAgentRegistryIamMember extends Resource {
  static const String tfType = 'google_iap_agent_registry_iam_member';

  GoogleIapAgentRegistryIamMember({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<String> member,
    IapAgentRegistryIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapAgentRegistryIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAgentRegistryIamMember>`.
  RefTo<GoogleIapAgentRegistryIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
