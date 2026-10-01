// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_tasks/google_cloud_tasks_queue.dart'
    show GoogleCloudTasksQueue;

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
    required RefTo<GoogleCloudTasksQueue> queue,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': queue.encodeAs('name'),
           'location': ?(location ?? queue.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? queue.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudTasksQueueIamPolicy>`.
  RefTo<GoogleCloudTasksQueueIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
