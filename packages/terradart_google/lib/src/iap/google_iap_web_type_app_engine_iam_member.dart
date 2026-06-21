// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_type_app_engine_iam_member`.
const Set<String> _googleIapWebTypeAppEngineIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_web_type_app_engine_iam_member`.
///
/// Additive IAM grant for Identity-Aware Proxy access to the App Engine
/// application at **project scope** (all services/versions).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [appId]: App Engine application ID (usually the GCP project ID).
/// - [role]: typically `'roles/iap.httpsResourceAccessor'`.
/// - [member]: IAM principal string.
///
/// Example:
/// ```dart
/// GoogleIapWebTypeAppEngineIamMember(
///   localName: 'app_invoker',
///   appId: TfArg.literal(projectId),
///   role: TfArg.literal('roles/iap.httpsResourceAccessor'),
///   member: TfArg.ref(sa.iamMember),
/// );
/// ```
final class GoogleIapWebTypeAppEngineIamMember extends Resource {
  static const String tfType = 'google_iap_web_type_app_engine_iam_member';

  GoogleIapWebTypeAppEngineIamMember({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeAppEngineIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
