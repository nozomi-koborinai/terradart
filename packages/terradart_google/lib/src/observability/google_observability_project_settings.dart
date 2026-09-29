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

  GoogleObservabilityProjectSettings({
    required super.localName,
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
}
