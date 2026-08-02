// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_tasks_queue_iam_policy`.
const Set<String> _googleCloudTasksQueueIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_tasks_queue_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Tasks queue.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleCloudTasksQueueIamMember] for single-principal grants.
final class GoogleCloudTasksQueueIamPolicy extends Resource {
  static const String tfType = 'google_cloud_tasks_queue_iam_policy';

  GoogleCloudTasksQueueIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
