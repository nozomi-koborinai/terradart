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

  GoogleObservabilityFolderSettings({
    required super.localName,
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
           if (defaultStorageLocation != null)
             'default_storage_location': defaultStorageLocation,
           'folder': folder,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName.encodeAs('id'),
           'location': location,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityFolderSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityFolderSettings>`.
  RefTo<GoogleObservabilityFolderSettings> get ref => RefTo.of(this);
}
