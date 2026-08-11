// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_autoscaling_policy_iam_member`.
const Set<String> _googleDataprocAutoscalingPolicyIamMemberSensitive =
    <String>{};

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
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           if (location != null) 'location': location,
           'role': role,
           'member': member,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocAutoscalingPolicyIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
