// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_type_app_engine_iam_binding`.
const Set<String> _googleIapWebTypeAppEngineIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_type_app_engine_iam_binding` (derived from provider schema).
@immutable
final class IapWebTypeAppEngineIamBindingCondition {
  const IapWebTypeAppEngineIamBindingCondition({
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

/// Factory wrapper for `google_iap_web_type_app_engine_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP App Engine at
/// project scope (all services/versions).
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleIapWebTypeAppEngineIamMember] for additive grants.
final class GoogleIapWebTypeAppEngineIamBinding extends Resource {
  static const String tfType = 'google_iap_web_type_app_engine_iam_binding';

  GoogleIapWebTypeAppEngineIamBinding(
    super.localName, {
    required TfArg<String> appId,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    IapWebTypeAppEngineIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeAppEngineIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebTypeAppEngineIamBinding>`.
  RefTo<GoogleIapWebTypeAppEngineIamBinding> get ref => RefTo.of(this);

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
}
