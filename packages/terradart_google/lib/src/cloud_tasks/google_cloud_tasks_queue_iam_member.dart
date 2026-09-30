// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_tasks_queue_iam_member`.
const Set<String> _googleCloudTasksQueueIamMemberSensitive = <String>{};

/// Factory wrapper for `google_cloud_tasks_queue_iam_member`.
final class GoogleCloudTasksQueueIamMember extends Resource {
  static const String tfType = 'google_cloud_tasks_queue_iam_member';

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'role': role,
           'member': member,
           'condition': ?condition,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudTasksQueueIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudTasksQueueIamMember>`.
  RefTo<GoogleCloudTasksQueueIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
