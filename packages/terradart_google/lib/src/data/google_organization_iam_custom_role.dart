// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../organization/google_organization_iam_custom_role.dart';

/// Sensitive field paths for `google_organization_iam_custom_role`.
const Set<String> _googleOrganizationIamCustomRoleSensitive = <String>{};

/// Factory wrapper for `google_organization_iam_custom_role`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOrganizationIamCustomRole extends Data {
  static const String tfType = 'google_organization_iam_custom_role';

  DataGoogleOrganizationIamCustomRole(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> roleId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'org_id': orgId, 'role_id': roleId},
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamCustomRoleSensitive;

  /// A reference to the `google_organization_iam_custom_role` this data source reads, for
  /// arguments typed `RefTo<GoogleOrganizationIamCustomRole>`.
  RefTo<GoogleOrganizationIamCustomRole> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `stage` attribute.
  TfRef<String> get stage => TfRef.attribute<String>(this, 'stage');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role_id` attribute.
  TfRef<String> get roleId => TfRef.attribute<String>(this, 'role_id');
}
