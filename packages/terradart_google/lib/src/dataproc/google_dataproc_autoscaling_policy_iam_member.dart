// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> policyId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    DataprocAutoscalingPolicyIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           'location': ?location,
           'role': role,
           'member': member,
           'project': ?project,
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
}
