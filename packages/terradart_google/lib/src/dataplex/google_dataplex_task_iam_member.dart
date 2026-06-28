// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_task_iam_member`.
const Set<String> _googleDataplexTaskIamMemberSensitive = <String>{};

/// Factory wrapper for `google_dataplex_task_iam_member`.
final class GoogleDataplexTaskIamMember extends Resource {
  static const String tfType = 'google_dataplex_task_iam_member';

  GoogleDataplexTaskIamMember({
    required super.localName,
    required TfArg<String> taskId,
    required TfArg<String> lake,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'task_id': taskId,
           'lake': lake,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexTaskIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
