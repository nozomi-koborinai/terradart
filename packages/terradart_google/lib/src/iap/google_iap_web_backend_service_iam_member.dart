// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_backend_service_iam_member`.
const Set<String> _googleIapWebBackendServiceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_web_backend_service_iam_member`.
final class GoogleIapWebBackendServiceIamMember extends Resource {
  static const String tfType = 'google_iap_web_backend_service_iam_member';

  GoogleIapWebBackendServiceIamMember({
    required super.localName,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    required TfArg<String> webBackendService,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           'web_backend_service': webBackendService,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebBackendServiceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
