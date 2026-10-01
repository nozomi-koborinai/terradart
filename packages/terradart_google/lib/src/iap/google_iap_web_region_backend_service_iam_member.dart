// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_region_backend_service_iam_member`.
const Set<String> _googleIapWebRegionBackendServiceIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_region_backend_service_iam_member` (derived from provider schema).
@immutable
final class IapWebRegionBackendServiceIamMemberCondition {
  const IapWebRegionBackendServiceIamMemberCondition({
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

/// Factory wrapper for `google_iap_web_region_backend_service_iam_member`.
final class GoogleIapWebRegionBackendServiceIamMember extends Resource {
  static const String tfType =
      'google_iap_web_region_backend_service_iam_member';

  GoogleIapWebRegionBackendServiceIamMember(
    super.localName, {
    required TfArg<String> webRegionBackendService,
    required TfArg<String> role,
    required IamPrincipal member,
    IapWebRegionBackendServiceIamMemberCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_region_backend_service': webRegionBackendService,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionBackendServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebRegionBackendServiceIamMember>`.
  RefTo<GoogleIapWebRegionBackendServiceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `web_region_backend_service` attribute.
  TfRef<String> get webRegionBackendService =>
      TfRef.attribute<String>(this, 'web_region_backend_service');
}
