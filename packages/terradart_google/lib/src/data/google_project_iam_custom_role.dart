// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_custom_role`.
const Set<String> _googleProjectIamCustomRoleSensitive = <String>{};

/// Factory wrapper for `google_project_iam_custom_role`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleProjectIamCustomRole extends Data {
  static const String tfType = 'google_project_iam_custom_role';

  DataGoogleProjectIamCustomRole({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> roleId,
  }) : super(
         terraformType: tfType,
         argMap: {if (project != null) 'project': project, 'role_id': roleId},
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamCustomRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
