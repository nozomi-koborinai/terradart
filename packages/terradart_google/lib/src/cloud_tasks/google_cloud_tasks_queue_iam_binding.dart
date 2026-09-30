// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_tasks_queue_iam_binding`.
const Set<String> _googleCloudTasksQueueIamBindingSensitive = <String>{};

/// Factory wrapper for `google_cloud_tasks_queue_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Tasks queue.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudTasksQueueIamMember] for additive grants.
final class GoogleCloudTasksQueueIamBinding extends Resource {
  static const String tfType = 'google_cloud_tasks_queue_iam_binding';

  GoogleCloudTasksQueueIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'role': role,
           'members': members,
           'condition': ?condition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudTasksQueueIamBinding>`.
  RefTo<GoogleCloudTasksQueueIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
