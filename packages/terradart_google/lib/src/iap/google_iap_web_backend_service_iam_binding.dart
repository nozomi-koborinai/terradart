// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_backend_service_iam_binding`.
const Set<String> _googleIapWebBackendServiceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_web_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an **external HTTPS
/// load balancer backend service** protected by Identity-Aware Proxy (IAP).
///
/// Grants `roles/iap.httpsResourceAccessor` (or another IAP role) to the
/// listed `members` and **replaces** the entire member list for that role
/// on the backend service. Prefer `google_iap_web_backend_service_iam_member`
/// when you only need to add one principal without touching existing
/// bindings (not yet a curated factory).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `webBackendService`: short backend service name (e.g.
///   `'koborin-ai-dev-backend'`). Pass `TfArg.ref(backend.nameRef)` from
///   [GoogleComputeBackendService].
/// - `role`: typically `'roles/iap.httpsResourceAccessor'`.
/// - `members`: IAM principal strings (`user:…`, `group:…`, `domain:…`).
///
/// `project` is optional and defaults to the provider project.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
///
/// Pair with IAP enabled on the backend service itself via
/// [GoogleComputeBackendService]'s `iap` block (OAuth client ID/secret).
final class GoogleIapWebBackendServiceIamBinding extends Resource {
  static const String tfType = 'google_iap_web_backend_service_iam_binding';

  GoogleIapWebBackendServiceIamBinding({
    required super.localName,
    required TfArg<String> webBackendService,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_backend_service': webBackendService,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebBackendServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
