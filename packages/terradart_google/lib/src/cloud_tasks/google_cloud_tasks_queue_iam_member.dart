// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_tasks_queue_iam_member`.
const Set<String> _googleCloudTasksQueueIamMemberSensitive = <String>{};

/// Factory wrapper for `google_cloud_tasks_queue_iam_member`.
///
/// Identity: `name` + `location` + `role` + `member` (project optional).
final class GoogleCloudTasksQueueIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloud_tasks_queue_iam_member';

  GoogleCloudTasksQueueIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'location': location,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleCloudTasksQueueIamMemberSensitive;

  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
