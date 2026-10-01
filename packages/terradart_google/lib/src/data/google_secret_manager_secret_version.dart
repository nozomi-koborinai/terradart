// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../secret_manager/google_secret_manager_secret_version.dart';

/// Sensitive field paths for `google_secret_manager_secret_version`.
const Set<String> _googleSecretManagerSecretVersionSensitive = <String>{
  'secret_data',
};

/// Factory wrapper for `google_secret_manager_secret_version`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecretManagerSecretVersion extends Data {
  static const String tfType = 'google_secret_manager_secret_version';

  DataGoogleSecretManagerSecretVersion({
    required super.localName,
    TfArg<bool>? fetchSecretData,
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? project,
    required TfArg<String> secret,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fetch_secret_data': ?fetchSecretData,
           'is_secret_data_base64': ?isSecretDataBase64,
           'project': ?project,
           'secret': secret,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecretManagerSecretVersionSensitive;

  /// A reference to the `google_secret_manager_secret_version` this data source reads, for
  /// arguments typed `RefTo<GoogleSecretManagerSecretVersion>`.
  RefTo<GoogleSecretManagerSecretVersion> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `destroy_time` attribute.
  TfRef<String> get destroyTime =>
      TfRef.attribute<String>(this, 'destroy_time');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretData => TfRef.attribute<String>(this, 'secret_data');

  /// Reference to `fetch_secret_data` attribute.
  TfRef<bool> get fetchSecretData =>
      TfRef.attribute<bool>(this, 'fetch_secret_data');

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
