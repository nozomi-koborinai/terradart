// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret_version_access`.
const Set<String> _googleSecretManagerRegionalSecretVersionAccessSensitive =
    <String>{'secret_data'};

/// Factory wrapper for `google_secret_manager_regional_secret_version_access`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecretManagerRegionalSecretVersionAccess extends Data {
  static const String tfType =
      'google_secret_manager_regional_secret_version_access';

  DataGoogleSecretManagerRegionalSecretVersionAccess(
    super.localName, {
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> secret,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'is_secret_data_base64': ?isSecretDataBase64,
           'location': ?location,
           'project': ?project,
           'secret': secret,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretVersionAccessSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretData => TfRef.attribute<String>(this, 'secret_data');

  /// Reference to `is_secret_data_base64` attribute.
  TfRef<bool> get isSecretDataBase64 =>
      TfRef.attribute<bool>(this, 'is_secret_data_base64');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
