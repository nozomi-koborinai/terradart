// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_role`.
const Set<String> _googleIamRoleSensitive = <String>{};

/// Factory wrapper for `google_iam_role`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamRole extends Data {
  static const String tfType = 'google_iam_role';

  DataGoogleIamRole({required super.localName, required TfArg<String> name})
    : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _googleIamRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `included_permissions` attribute.
  TfRef<List<String>> get includedPermissions =>
      TfRef.attribute<List<String>>(this, 'included_permissions');

  /// Reference to `stage` attribute.
  TfRef<String> get stage => TfRef.attribute<String>(this, 'stage');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
