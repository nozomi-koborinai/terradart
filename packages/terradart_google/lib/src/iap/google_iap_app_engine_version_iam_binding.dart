// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_app_engine_version_iam_binding`.
const Set<String> _googleIapAppEngineVersionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_app_engine_version_iam_binding` (derived from provider schema).
@immutable
final class IapAppEngineVersionIamBindingCondition {
  const IapAppEngineVersionIamBindingCondition({
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
    required TfArg<List<IamPrincipal>> members,
    IapAppEngineVersionIamBindingCondition? condition,
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
           'version_id': versionId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineVersionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapAppEngineVersionIamBinding>`.
  RefTo<GoogleIapAppEngineVersionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
