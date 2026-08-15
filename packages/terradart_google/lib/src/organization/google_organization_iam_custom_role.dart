// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_iam_custom_role`.
const Set<String> _googleOrganizationIamCustomRoleSensitive = <String>{};

/// Factory wrapper for `google_organization_iam_custom_role`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrganizationIamCustomRole extends Resource {
  static const String tfType = 'google_organization_iam_custom_role';

  GoogleOrganizationIamCustomRole({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> orgId,
    required TfArg<List<String>> permissions,
    required TfArg<String> roleId,
    TfArg<String>? stage,
    required TfArg<String> title,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'org_id': orgId,
           'permissions': permissions,
           'role_id': roleId,
           if (stage != null) 'stage': stage,
           'title': title,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamCustomRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');
}
