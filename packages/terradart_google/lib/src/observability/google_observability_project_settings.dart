// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_observability_project_settings`.
const Set<String> _googleObservabilityProjectSettingsSensitive = <String>{};

/// Factory wrapper for `google_observability_project_settings`.
///
/// Manages Cloud Observability settings for a project.
final class GoogleObservabilityProjectSettings extends Resource {
  static const String tfType = 'google_observability_project_settings';

  GoogleObservabilityProjectSettings(
    super.localName, {
    TfArg<String>? defaultStorageLocation,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_storage_location': ?defaultStorageLocation,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'location': location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityProjectSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityProjectSettings>`.
  RefTo<GoogleObservabilityProjectSettings> get ref => RefTo.of(this);

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

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
