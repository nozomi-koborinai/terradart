// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_version_iam_binding`.
const Set<String> _googleIapAppEngineVersionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_version_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP App Engine
/// version.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapAppEngineVersionIamMember] for additive grants.
final class GoogleIapAppEngineVersionIamBinding extends Resource {
  static const String tfType = 'google_iap_app_engine_version_iam_binding';

  GoogleIapAppEngineVersionIamBinding({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> service,
    required TfArg<String> versionId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'service': service,
           'version_id': versionId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineVersionIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
