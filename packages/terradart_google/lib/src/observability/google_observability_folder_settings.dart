// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_observability_folder_settings`.
const Set<String> _googleObservabilityFolderSettingsSensitive = <String>{};

/// Factory wrapper for `google_observability_folder_settings`.
///
/// Manages Cloud Observability settings for a folder.
final class GoogleObservabilityFolderSettings extends Resource {
  static const String tfType = 'google_observability_folder_settings';

  GoogleObservabilityFolderSettings(
    super.localName, {
    TfArg<String>? defaultStorageLocation,
    required TfArg<String> folder,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    required TfArg<String> location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_storage_location': ?defaultStorageLocation,
           'folder': folder,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'location': location,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityFolderSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityFolderSettings>`.
  RefTo<GoogleObservabilityFolderSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');

  /// Reference to `default_storage_location` attribute.
  TfRef<String> get defaultStorageLocation =>
      TfRef.attribute<String>(this, 'default_storage_location');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
