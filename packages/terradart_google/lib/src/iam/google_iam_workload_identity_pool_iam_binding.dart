// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_binding`.
const Set<String> _googleIamWorkloadIdentityPoolIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_workload_identity_pool_iam_binding` (derived from provider schema).
@immutable
final class IamWorkloadIdentityPoolIamBindingCondition {
  const IamWorkloadIdentityPoolIamBindingCondition({
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

/// Factory wrapper for `google_iam_workload_identity_pool_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Workload Identity Federation pool.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkloadIdentityPoolIamMember] for additive grants.
final class GoogleIamWorkloadIdentityPoolIamBinding extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_iam_binding';

  GoogleIamWorkloadIdentityPoolIamBinding({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    IamWorkloadIdentityPoolIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkloadIdentityPoolIamBinding>`.
  RefTo<GoogleIamWorkloadIdentityPoolIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
