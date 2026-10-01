// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_member`.
const Set<String> _googleIamWorkloadIdentityPoolIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_workload_identity_pool_iam_member` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolIamMemberCondition {
  const IamWorkloadIdentityPoolIamMemberCondition({
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

/// Factory wrapper for `google_iam_workload_identity_pool_iam_member`.
final class GoogleIamWorkloadIdentityPoolIamMember extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_iam_member';

  GoogleIamWorkloadIdentityPoolIamMember({
    required super.localName,
    required RefTo<GoogleIamWorkloadIdentityPool> workloadIdentityPool,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    IamWorkloadIdentityPoolIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPool.encodeAs(
             'workload_identity_pool_id',
           ),
           'role': role,
           'member': member,
           'project': ?(project ?? workloadIdentityPool.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolIamMember>`.
  RefTo<GoogleIamWorkloadIdentityPoolIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `workload_identity_pool_id` attribute.
  TfRef<String> get workloadIdentityPoolId =>
      TfRef.attribute<String>(this, 'workload_identity_pool_id');
}
