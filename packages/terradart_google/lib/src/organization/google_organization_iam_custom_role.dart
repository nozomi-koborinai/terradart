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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'org_id': orgId,
           'permissions': permissions,
           'role_id': roleId,
           'stage': ?stage,
           'title': title,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamCustomRoleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationIamCustomRole>`.
  RefTo<GoogleOrganizationIamCustomRole> get ref => RefTo.of(this);

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

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `role_id` attribute.
  TfRef<String> get roleId => TfRef.attribute<String>(this, 'role_id');

  /// Reference to `stage` attribute.
  TfRef<String> get stage => TfRef.attribute<String>(this, 'stage');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
