// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iap_web_region_backend_service_iam_binding`.
const Set<String> _googleIapWebRegionBackendServiceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_iap_web_region_backend_service_iam_binding` (derived from provider schema).
@immutable
final class IapWebRegionBackendServiceIamBindingCondition {
  const IapWebRegionBackendServiceIamBindingCondition({
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

/// Factory wrapper for `google_iap_web_region_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP-protected
/// regional backend service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebRegionBackendServiceIamMember] for additive grants.
final class GoogleIapWebRegionBackendServiceIamBinding extends Resource {
  static const String tfType =
      'google_iap_web_region_backend_service_iam_binding';

  GoogleIapWebRegionBackendServiceIamBinding({
    required super.localName,
    required TfArg<String> webRegionBackendService,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    IapWebRegionBackendServiceIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionBackendServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebRegionBackendServiceIamBinding>`.
  RefTo<GoogleIapWebRegionBackendServiceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

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
