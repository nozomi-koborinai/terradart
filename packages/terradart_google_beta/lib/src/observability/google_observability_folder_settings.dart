// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_observability_folder_settings`.
const Set<String> _googleObservabilityFolderSettingsSensitive = <String>{};

/// Factory wrapper for `google_observability_folder_settings`.
final class GoogleObservabilityFolderSettings extends Resource {
  static const String tfType = 'google_observability_folder_settings';

  GoogleObservabilityFolderSettings({
    required super.localName,
    TfArg<String>? defaultStorageLocation,
    required TfArg<String> folder,
    TfArg<String>? kmsKeyName,
    required TfArg<String> location,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (defaultStorageLocation != null)
             'default_storage_location': defaultStorageLocation,
           'folder': folder,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           'location': location,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityFolderSettingsSensitive;
}
