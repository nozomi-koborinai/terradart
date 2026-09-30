// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret_version`.
const Set<String> _googleSecretManagerRegionalSecretVersionSensitive = <String>{
  'secret_data',
};

/// Factory wrapper for `google_secret_manager_regional_secret_version`.
///
/// A regional secret version resource.
final class GoogleSecretManagerRegionalSecretVersion extends Resource {
  static const String tfType = 'google_secret_manager_regional_secret_version';

  GoogleSecretManagerRegionalSecretVersion({
    required super.localName,
    required TfArg<String> secret,
    required TfArg<String> secretData,
    TfArg<bool>? enabled,
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret': secret,
           'secret_data': secretData,
           'enabled': ?enabled,
           'is_secret_data_base64': ?isSecretDataBase64,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerRegionalSecretVersion>`.
  RefTo<GoogleSecretManagerRegionalSecretVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `customer_managed_encryption` attribute.
  TfRef<List<Map<String, Object?>>> get customerManagedEncryption =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'customer_managed_encryption',
      );

  /// Reference to `destroy_time` attribute.
  TfRef<String> get destroyTime =>
      TfRef.attribute<String>(this, 'destroy_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `is_secret_data_base64` attribute.
  TfRef<bool> get isSecretDataBase64Ref =>
      TfRef.attribute<bool>(this, 'is_secret_data_base64');

  /// Reference to `secret` attribute.
  TfRef<String> get secretRef => TfRef.attribute<String>(this, 'secret');

  /// Reference to `secret_data` attribute.
  TfRef<String> get secretDataRef =>
      TfRef.attribute<String>(this, 'secret_data');
}
