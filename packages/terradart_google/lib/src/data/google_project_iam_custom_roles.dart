// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_custom_roles`.
const Set<String> _googleProjectIamCustomRolesSensitive = <String>{};

/// Factory wrapper for `google_project_iam_custom_roles`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleProjectIamCustomRoles extends Data {
  static const String tfType = 'google_project_iam_custom_roles';

  DataGoogleProjectIamCustomRoles({
    required super.localName,
    TfArg<String>? project,
    TfArg<bool>? showDeleted,
    TfArg<String>? view,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (showDeleted != null) 'show_deleted': showDeleted,
           if (view != null) 'view': view,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamCustomRolesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `roles` attribute.
  TfRef<List<Map<String, Object?>>> get roles =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'roles');
}
