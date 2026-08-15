// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_iam_custom_roles`.
const Set<String> _googleOrganizationIamCustomRolesSensitive = <String>{};

/// Factory wrapper for `google_organization_iam_custom_roles`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOrganizationIamCustomRoles extends Data {
  static const String tfType = 'google_organization_iam_custom_roles';

  DataGoogleOrganizationIamCustomRoles({
    required super.localName,
    TfArg<String>? orgId,
    TfArg<bool>? showDeleted,
    TfArg<String>? view,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (orgId != null) 'org_id': orgId,
           if (showDeleted != null) 'show_deleted': showDeleted,
           if (view != null) 'view': view,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamCustomRolesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `roles` attribute.
  TfRef<List<Map<String, Object?>>> get roles =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'roles');
}
