// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_tasks/google_cloud_tasks_queue.dart'
    show GoogleCloudTasksQueue;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloud_tasks_queue_iam_binding`.
const Set<String> _googleCloudTasksQueueIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloud_tasks_queue_iam_binding` (derived from provider schema).
@immutable
final class CloudTasksQueueIamBindingCondition {
  const CloudTasksQueueIamBindingCondition({
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

/// Factory wrapper for `google_cloud_tasks_queue_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Tasks queue.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleCloudTasksQueueIamMember] for additive grants.
final class GoogleCloudTasksQueueIamBinding extends Resource {
  static const String tfType = 'google_cloud_tasks_queue_iam_binding';

  GoogleCloudTasksQueueIamBinding(
    super.localName, {
    required RefTo<GoogleCloudTasksQueue> queue,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    CloudTasksQueueIamBindingCondition? condition,
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
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? queue.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudTasksQueueIamBinding>`.
  RefTo<GoogleCloudTasksQueueIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
