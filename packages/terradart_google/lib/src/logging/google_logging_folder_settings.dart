// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_folder_settings`.
const Set<String> _googleLoggingFolderSettingsSensitive = <String>{};

/// Factory wrapper for `google_logging_folder_settings`.
///
/// Default resource settings control whether CMEK is required for new log
/// buckets. These settings also determine the storage location for the _Default
/// and _Required log buckets, and whether the _Default sink is enabled or
/// disabled.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingFolderSettings extends Resource {
  static const String tfType = 'google_logging_folder_settings';

  GoogleLoggingFolderSettings({
    required super.localName,
    TfArg<bool>? disableDefaultSink,
    required TfArg<String> folder,
    TfArg<String>? kmsKeyName,
    TfArg<String>? storageLocation,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (disableDefaultSink != null)
             'disable_default_sink': disableDefaultSink,
           'folder': folder,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (storageLocation != null) 'storage_location': storageLocation,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingFolderSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_service_account_id` attribute.
  TfRef<String> get kmsServiceAccountId =>
      TfRef.attribute<String>(this, 'kms_service_account_id');

  /// Reference to `logging_service_account_id` attribute.
  TfRef<String> get loggingServiceAccountId =>
      TfRef.attribute<String>(this, 'logging_service_account_id');
}
