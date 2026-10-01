// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_gke_hub_scope.dart' show GoogleGkeHubScope;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_hub_scope_iam_member`.
const Set<String> _googleGkeHubScopeIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_hub_scope_iam_member` (derived from provider schema).
@immutable
final class GkeHubScopeIamMemberCondition {
  const GkeHubScopeIamMemberCondition({
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

/// Factory wrapper for `google_gke_hub_scope_iam_member`.
final class GoogleGkeHubScopeIamMember extends Resource {
  static const String tfType = 'google_gke_hub_scope_iam_member';

  GoogleGkeHubScopeIamMember({
    required super.localName,
    required RefTo<GoogleGkeHubScope> scope,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    GkeHubScopeIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scope.encodeAs('scope_id'),
           'role': role,
           'member': member,
           'project': ?(project ?? scope.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubScopeIamMember>`.
  RefTo<GoogleGkeHubScopeIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeIdRef => TfRef.attribute<String>(this, 'scope_id');
}
