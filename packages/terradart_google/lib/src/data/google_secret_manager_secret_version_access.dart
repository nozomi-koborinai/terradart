// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_version_access`.
const Set<String> _googleSecretManagerSecretVersionAccessSensitive = <String>{
  'secret_data',
};

/// Factory wrapper for `google_secret_manager_secret_version_access`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecretManagerSecretVersionAccess extends Data {
  static const String tfType = 'google_secret_manager_secret_version_access';

  DataGoogleSecretManagerSecretVersionAccess({
    required super.localName,
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? project,
    required TfArg<String> secret,
    TfArg<String>? version,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (isSecretDataBase64 != null)
             'is_secret_data_base64': isSecretDataBase64,
           if (project != null) 'project': project,
           'secret': secret,
           if (version != null) 'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretVersionAccessSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretData => TfRef.attribute<String>(this, 'secret_data');
}
