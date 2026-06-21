// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_service_iam_member`.
const Set<String> _googleIapAppEngineServiceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_service_iam_member`.
///
/// Additive IAM grant for Identity-Aware Proxy access on one App Engine
/// **service**.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [appId]: App Engine application ID (usually the GCP project ID).
/// - [service]: App Engine service name (e.g. `'default'`).
/// - [role]: typically `'roles/iap.httpsResourceAccessor'`.
/// - [member]: IAM principal (`user:…`, `group:…`, `serviceAccount:…`).
///
/// Example:
/// ```dart
/// GoogleIapAppEngineServiceIamMember(
///   localName: 'default_invoker',
///   appId: TfArg.literal(projectId),
///   service: TfArg.literal('default'),
///   role: TfArg.literal('roles/iap.httpsResourceAccessor'),
///   member: TfArg.ref(sa.iamMember),
/// );
/// ```
final class GoogleIapAppEngineServiceIamMember extends Resource {
  static const String tfType = 'google_iap_app_engine_service_iam_member';

  GoogleIapAppEngineServiceIamMember({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> service,
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
           'service': service,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineServiceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
