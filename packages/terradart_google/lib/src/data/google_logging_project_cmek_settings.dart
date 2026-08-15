// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_cmek_settings`.
const Set<String> _googleLoggingProjectCmekSettingsSensitive = <String>{};

/// Factory wrapper for `google_logging_project_cmek_settings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLoggingProjectCmekSettings extends Data {
  static const String tfType = 'google_logging_project_cmek_settings';

  DataGoogleLoggingProjectCmekSettings({
    required super.localName,
    TfArg<String>? kmsKeyName,
    required TfArg<String> project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectCmekSettingsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_key_version_name` attribute.
  TfRef<String> get kmsKeyVersionName =>
      TfRef.attribute<String>(this, 'kms_key_version_name');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');
}
