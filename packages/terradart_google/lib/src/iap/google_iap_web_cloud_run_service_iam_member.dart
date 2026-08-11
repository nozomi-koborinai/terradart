// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_cloud_run_service_iam_member`.
const Set<String> _googleIapWebCloudRunServiceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_web_cloud_run_service_iam_member`.
final class GoogleIapWebCloudRunServiceIamMember extends Resource {
  static const String tfType = 'google_iap_web_cloud_run_service_iam_member';

  GoogleIapWebCloudRunServiceIamMember({
    required super.localName,
    required TfArg<String> cloudRunServiceName,
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
           'cloud_run_service_name': cloudRunServiceName,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebCloudRunServiceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
