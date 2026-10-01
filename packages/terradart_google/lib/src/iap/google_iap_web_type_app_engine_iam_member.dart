// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_type_app_engine_iam_member`.
const Set<String> _googleIapWebTypeAppEngineIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_type_app_engine_iam_member` (derived from provider schema).
@immutable
final class IapWebTypeAppEngineIamMemberCondition {
  const IapWebTypeAppEngineIamMemberCondition({
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
///   member: sa.principal,
/// );
/// ```
final class GoogleIapWebTypeAppEngineIamMember extends Resource {
  static const String tfType = 'google_iap_web_type_app_engine_iam_member';

  GoogleIapWebTypeAppEngineIamMember({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> role,
    required IamPrincipal member,
    IapWebTypeAppEngineIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeAppEngineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebTypeAppEngineIamMember>`.
  RefTo<GoogleIapWebTypeAppEngineIamMember> get ref => RefTo.of(this);

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
}
