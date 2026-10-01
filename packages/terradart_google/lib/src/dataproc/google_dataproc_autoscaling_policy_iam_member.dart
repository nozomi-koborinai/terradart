// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_autoscaling_policy.dart'
    show GoogleDataprocAutoscalingPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataproc_autoscaling_policy_iam_member`.
const Set<String> _googleDataprocAutoscalingPolicyIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_autoscaling_policy_iam_member` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicyIamMemberCondition {
  const DataprocAutoscalingPolicyIamMemberCondition({
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

/// Factory wrapper for `google_dataproc_autoscaling_policy_iam_member`.
final class GoogleDataprocAutoscalingPolicyIamMember extends Resource {
  static const String tfType = 'google_dataproc_autoscaling_policy_iam_member';

  GoogleDataprocAutoscalingPolicyIamMember({
    required super.localName,
    required RefTo<GoogleDataprocAutoscalingPolicy> autoscalingPolicy,
    TfArg<String>? location,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    DataprocAutoscalingPolicyIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? autoscalingPolicy.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocAutoscalingPolicyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocAutoscalingPolicyIamMember>`.
  RefTo<GoogleDataprocAutoscalingPolicyIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyIdRef => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
