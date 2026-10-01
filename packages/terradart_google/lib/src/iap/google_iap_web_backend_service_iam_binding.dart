// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_backend_service_iam_binding`.
const Set<String> _googleIapWebBackendServiceIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_backend_service_iam_binding` (derived from provider schema).
@immutable
final class IapWebBackendServiceIamBindingCondition {
  const IapWebBackendServiceIamBindingCondition({
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

/// Factory wrapper for `google_iap_web_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an **external HTTPS
/// load balancer backend service** protected by Identity-Aware Proxy (IAP).
///
/// Grants `roles/iap.httpsResourceAccessor` (or another IAP role) to the
/// listed `members` and **replaces** the entire member list for that role
/// on the backend service. Prefer [GoogleIapWebBackendServiceIamMember]
/// when you only need to add one principal without touching existing
/// bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `webBackendService`: short backend service name (e.g.
///   `'koborin-ai-dev-backend'`). Pass `backend.name` from
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
    required TfArg<List<IamPrincipal>> members,
    IapWebBackendServiceIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_backend_service': webBackendService,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebBackendServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebBackendServiceIamBinding>`.
  RefTo<GoogleIapWebBackendServiceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `web_backend_service` attribute.
  TfRef<String> get webBackendService =>
      TfRef.attribute<String>(this, 'web_backend_service');
}
