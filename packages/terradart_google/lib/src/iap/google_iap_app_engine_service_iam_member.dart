// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_service_iam_member`.
const Set<String> _googleIapAppEngineServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_app_engine_service_iam_member` (derived from provider schema).
@immutable
final class IapAppEngineServiceIamMemberCondition {
  const IapAppEngineServiceIamMemberCondition({
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
    IapAppEngineServiceIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'service': service,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAppEngineServiceIamMember>`.
  RefTo<GoogleIapAppEngineServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `app_id` attribute.
  TfRef<String> get appIdRef => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');
}
