// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_autoscaling_policy.dart'
    show GoogleDataprocAutoscalingPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_autoscaling_policy_iam_binding`.
const Set<String> _googleDataprocAutoscalingPolicyIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_autoscaling_policy_iam_binding` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicyIamBindingCondition {
  const DataprocAutoscalingPolicyIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_autoscaling_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc autoscaling policy.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocAutoscalingPolicyIamMember] for additive grants.
final class GoogleDataprocAutoscalingPolicyIamBinding extends Resource {
  static const String tfType = 'google_dataproc_autoscaling_policy_iam_binding';

  GoogleDataprocAutoscalingPolicyIamBinding({
    required super.localName,
    required RefTo<GoogleDataprocAutoscalingPolicy> autoscalingPolicy,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    DataprocAutoscalingPolicyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': autoscalingPolicy.encodeAs('policy_id'),
           'location': ?(location ?? autoscalingPolicy.alsoAs('location')),
           'role': role,
           'members': members,
           'project': ?(project ?? autoscalingPolicy.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocAutoscalingPolicyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocAutoscalingPolicyIamBinding>`.
  RefTo<GoogleDataprocAutoscalingPolicyIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
