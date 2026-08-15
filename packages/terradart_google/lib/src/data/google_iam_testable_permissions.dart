// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_testable_permissions`.
const Set<String> _googleIamTestablePermissionsSensitive = <String>{};

/// Factory wrapper for `google_iam_testable_permissions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamTestablePermissions extends Data {
  static const String tfType = 'google_iam_testable_permissions';

  DataGoogleIamTestablePermissions({
    required super.localName,
    TfArg<String>? customSupportLevel,
    required TfArg<String> fullResourceName,
    TfArg<List<String>>? stages,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customSupportLevel != null)
             'custom_support_level': customSupportLevel,
           'full_resource_name': fullResourceName,
           if (stages != null) 'stages': stages,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamTestablePermissionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');
}
