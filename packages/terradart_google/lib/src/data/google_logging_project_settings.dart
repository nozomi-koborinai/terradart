// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_settings`.
const Set<String> _googleLoggingProjectSettingsSensitive = <String>{};

/// Factory wrapper for `google_logging_project_settings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLoggingProjectSettings extends Data {
  static const String tfType = 'google_logging_project_settings';

  DataGoogleLoggingProjectSettings({
    required super.localName,
    required TfArg<String> project,
  }) : super(terraformType: tfType, argMap: {'project': project});

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disable_default_sink` attribute.
  TfRef<bool> get disableDefaultSink =>
      TfRef.attribute<bool>(this, 'disable_default_sink');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `kms_service_account_id` attribute.
  TfRef<String> get kmsServiceAccountId =>
      TfRef.attribute<String>(this, 'kms_service_account_id');

  /// Reference to `logging_service_account_id` attribute.
  TfRef<String> get loggingServiceAccountId =>
      TfRef.attribute<String>(this, 'logging_service_account_id');

  /// Reference to `storage_location` attribute.
  TfRef<String> get storageLocation =>
      TfRef.attribute<String>(this, 'storage_location');
}
