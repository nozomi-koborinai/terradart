// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_scope.dart' show GoogleGkeHubScope;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_hub_scope_iam_binding`.
const Set<String> _googleGkeHubScopeIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_hub_scope_iam_binding` (derived from provider schema).
@immutable
final class GkeHubScopeIamBindingCondition {
  const GkeHubScopeIamBindingCondition({
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

/// Factory wrapper for `google_gke_hub_scope_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Hub fleet scope.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubScopeIamMember] for additive grants.
final class GoogleGkeHubScopeIamBinding extends Resource {
  static const String tfType = 'google_gke_hub_scope_iam_binding';

  GoogleGkeHubScopeIamBinding(
    super.localName, {
    required RefTo<GoogleGkeHubScope> scope,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    GkeHubScopeIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scope.encodeAs('scope_id'),
           'role': role,
           'members': members,
           'project': ?(project ?? scope.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubScopeIamBinding>`.
  RefTo<GoogleGkeHubScopeIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');
}
