// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_cloud_tasks_queue_iam_member.schema.dart'
    show
        $GoogleCloudTasksQueueIamMember,
        googleCloudTasksQueueIamMemberSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GoogleCloudTasksQueueIamMemberSchemaInstance
    implements $GoogleCloudTasksQueueIamMember {
  const _GoogleCloudTasksQueueIamMemberSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_cloud_tasks_queue_iam_member`.
///
/// Identity: `name` + `location` + `role` + `member` (project optional).
final class GoogleCloudTasksQueueIamMember
    extends Resource<$GoogleCloudTasksQueueIamMember> {
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
         schema: const _GoogleCloudTasksQueueIamMemberSchemaInstance(),
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
  Set<String> get $sensitiveFields => googleCloudTasksQueueIamMemberSensitive;

  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
