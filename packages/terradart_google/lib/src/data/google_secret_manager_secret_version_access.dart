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

  DataGoogleSecretManagerSecretVersionAccess(
    super.localName, {
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? project,
    required TfArg<String> secret,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'is_secret_data_base64': ?isSecretDataBase64,
           'project': ?project,
           'secret': secret,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretVersionAccessSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretData => TfRef.attribute<String>(this, 'secret_data');

  /// Reference to `is_secret_data_base64` attribute.
  TfRef<bool> get isSecretDataBase64 =>
      TfRef.attribute<bool>(this, 'is_secret_data_base64');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
