// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_backend_service_iam_member`.
const Set<String> _googleIapWebBackendServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_backend_service_iam_member` (derived from provider schema).
@immutable
final class IapWebBackendServiceIamMemberCondition {
  const IapWebBackendServiceIamMemberCondition({
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

/// Factory wrapper for `google_iap_web_backend_service_iam_member`.
final class GoogleIapWebBackendServiceIamMember extends Resource {
  static const String tfType = 'google_iap_web_backend_service_iam_member';

  GoogleIapWebBackendServiceIamMember(
    super.localName, {
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    required TfArg<String> webBackendService,
    IapWebBackendServiceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'member': member,
           'project': ?project,
           'role': role,
           'web_backend_service': webBackendService,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebBackendServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebBackendServiceIamMember>`.
  RefTo<GoogleIapWebBackendServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `web_backend_service` attribute.
  TfRef<String> get webBackendService =>
      TfRef.attribute<String>(this, 'web_backend_service');
}
