// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_instance_iam_member`.
const Set<String> _googleSecureSourceManagerInstanceIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_secure_source_manager_instance_iam_member`.
///
/// Non-authoritative IAM member on a Secure Source Manager instance.
///
/// [instanceId] is the short instance id (path segment), not the full
/// resource name.
final class GoogleSecureSourceManagerInstanceIamMember extends Resource {
  static const String tfType =
      'google_secure_source_manager_instance_iam_member';

  GoogleSecureSourceManagerInstanceIamMember({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
